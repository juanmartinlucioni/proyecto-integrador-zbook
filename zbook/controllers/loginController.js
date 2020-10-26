const db = require('../config/database/models/Usuarios')
const bcrypt = require('bcryptjs')
let loginController = {
  index: function (req, res) {
    return res.render("login", { title: "Login" });
  },
  log: (req, res) => {
        let formData = req.body
        let userPassword = bcrypt.hashSync(req.body.psw, 10)
        user = {
            username: formData.username,
            password: userPassword,
        }
        console.log(user.password);
        db.findOne({
        where:  [{username: user.username}]
        })
        .then((usuarioEncontrado)=>{
          if (usuarioEncontrado != null){
            if (bcrypt.compareSync(user.password, usuarioEncontrado.password)){
              console.log("bienvenido maquina!");
              req.session.user= usuarioEncontrado;
            }
            else {
              console.log("alguien se olvido la contrasena");
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
                    console.log("alguien se olvido la contrasena");
                  }
               }
              else {
                console.log('estas en el barrio equivocado, registrate ameo');
              }
            })
          }
        })
    }
};

module.exports = loginController;
