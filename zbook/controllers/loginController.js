const db = require('../config/database/models/Usuarios')
const bcrypt = require('bcryptjs')
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
          if (usuarioEncontrado != null) {
            console.log(bcrypt.hashSync(user.password, 10));
            console.log(usuarioEncontrado.password);
            if (bcrypt.compareSync(user.password, usuarioEncontrado.password) == false){
              console.log("alguien se olvido la contrasena user");
            }
            else if (bcrypt.compareSync(user.password, usuarioEncontrado.password)) {
              console.log("bienvenido maquina!");
              req.session.user= usuarioEncontrado;
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
                    console.log("que loco pa, te conectaste con el mail");
                    req.session.user= mailEncontrado;
                  }
                  else {
                    console.log("alguien se olvido la contrasena email");
                  }
               }
              else {
                console.log('estas en el barrio equivocado, registrate ameo');
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
