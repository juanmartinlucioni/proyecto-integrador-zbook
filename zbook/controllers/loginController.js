const db = require('../config/database/models/Usuarios')
const bcrypt = require('bcryptjs');
// const { removeTicks } = require('sequelize/types/lib/utils');
let loginController = {
  index: function (req, res) {
        if (req.session.user != undefined) {
          return res.redirect('/feed')
        } else {
          return res.render("login", { title: "Login" });
        }
  },
  log: (req, res) => {
        let formData = req.body
        user = {
            username: formData.username,
            password: formData.psw,
        }
        console.log(user.password);
        db.findOne({
          where:  [{username: user.username}]
        })
        .then((usuarioEncontrado) => {
          errores = []
          if (usuarioEncontrado != null) {
            if (bcrypt.compareSync(user.password, usuarioEncontrado.password) == false){
              errores.push("Password didn't match")
              return res.render('loginErrors', {
                title: "Error in login",
                errores: errores
              })
            }
            else {
              req.session.user= usuarioEncontrado;
              if(req.body.rememberme != undefined){
                res.cookie('userId', usuarioEncontrado.id, {maxAge:1*1000*60*60*2})
              };
              return res.redirect('/feed');
            }
          }
          else {
            db.findOne({
              where: [{email:user.username}]
            })
            .then((mailEncontrado)=>{
              if (mailEncontrado != null){
                  if (bcrypt.compareSync(user.password, mailEncontrado.password)){
                    req.session.user= mailEncontrado;
                    if(req.body.rememberme != undefined){
                      res.cookie('userId', usuarioEncontrado.id, {maxAge:1*1000*60*60*2})
                    };
                    return res.redirect('/feed');
                  }
                  else {
                    errores.push("Password didn't match")
                    return res.render('loginErrors', {
                      title: "Error in login",
                      errores: errores
                    })
                  }
               }
              else {
                errores.push("User not found")
                return res.render('loginErrors', {
                  title: "Error in login",
                  errores: errores
                })
              }
            })
          }
        })
    },
  out: (req, res) => {
    req.session.destroy()
    return res.redirect('/')
  }
};

module.exports = loginController;
