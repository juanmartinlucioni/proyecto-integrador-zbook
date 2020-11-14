const db = require('../database/models')
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
        db.usuarios.findOne({
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
            db.usuarios.findOne({
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
    res.clearCookie('userId');
    return res.redirect('/')
  },
  forgotPassword: (req, res) => {
    if (req.session.user != undefined) {
      return res.redirect('/profile/me/password')
    } else {
      return res.render("forgotPassword", { title: "Forgot Password" });
    }
  },
  passwordUpdate: (req, res) => {
    let formData = req.body
    userData = {
      username: formData.username,
      question: formData.question,
      answer: formData.answer,
      newPass: formData.password
    }
    errores = []
    console.log(userData);
    db.usuarios.findOne({
          where:  [{username: userData.username}]
        })
        .then((usuarioEncontrado) => {
          if (usuarioEncontrado == undefined) {
            errores.push("User not found")
            return res.render('passwordErrorsFP', {
              title: "Error in Password Change",
              errores: errores
            })
          } else {
            if (usuarioEncontrado.securityQuestion != userData.question) {
              errores.push("Question doesn't match")
              return res.render('passwordErrorsFP', {
                title: "Error in Password Change",
                errores: errores
              })
            } else if(usuarioEncontrado.answer == userData.answer) {
                if (userData.newPass.length < 6) {
                  errores.push("Password must be at least 6 characters long")
                  return res.render('passwordErrorsFP', {
                    title: "Error in Password Change",
                    errores: errores
                  })
                } else {
                  db.usuarios.update({
                    password: bcrypt.hashSync(userData.newPass, 10)
                    },
                    {
                      where: {
                        id: usuarioEncontrado.id
                      }
                    })
                    return res.redirect('/login')
                  }
            } else {
              errores.push("Answer does not match")
              return res.render('passwordErrorsFP', {
                title: "Error in Password Change",
                errores: errores
              })
            }
          }
        })
    }
};

module.exports = loginController;
