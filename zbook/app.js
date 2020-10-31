// Modulos
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var session = require('express-session');
var logger = require('morgan');
var Sequelize = require('sequelize');

// Routers
var indexRouter = require('./routes/index');
var feedRouter = require('./routes/feed');
var usersRouter = require('./routes/users');
var profileRouter = require('./routes/profile');
var registerRouter = require('./routes/register');
var loginRouter = require('./routes/login');
var postRouter = require('./routes/post');
var searchRouter = require('./routes/search')

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(session(
  { secret: 'copapistao',
    resave: false,
    saveUninitialized: true,
  }
));
app.use(express.static(path.join(__dirname, 'public')));

// Modificar todas las vistas
app.use(function(req,res,next){
  if(req.session.user != undefined){
    // locals nos deja disponibles datos en todas las vistas.
    res.locals.user = req.session.user
  }
  return next();
})
// Llamada a Rutas
app.use('/', indexRouter);
app.use('/feed', feedRouter);
app.use('/users', usersRouter);
app.use('/profile', profileRouter);
app.use('/register', registerRouter);
app.use('/login', loginRouter);
app.use('/post', postRouter);
app.use('/search', searchRouter);

// Sequelize
const db = require('./config/database/database')


db.authenticate()
  .then(() => console.log('Database connected...'))
  .catch(err => console.log('Error: ' + err));


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
