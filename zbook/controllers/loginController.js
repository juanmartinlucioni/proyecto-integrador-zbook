const db = require('../config/database/models/Usuarios')
const bcrypt = require('bcryptjs')
let loginController = {
  index: function (req, res) {
    return res.render("login", { title: "Login" });
  },
  log: (req, res) => {
        let formData = req.body
        // let userPassword = bcrypt.hashSync(req.body.psw, 10)
        user = {
            username: formData.username,
            // password: userPassword,
            password: formData.psw,
        }
        console.log(user.password);
        db.findAll({
        where: [
            { 
              username: user.username,
              password: user.password 
            }
        ]
        })
        .then((resultados)=>{
          if (resultados.length > 0){
            console.log("estas logea3 papaaa");
          }
          else{
            db.findOne({
              where: [{email:user.username}]
            })
            .then(function(users){
              if (users.password = user.password){
                console.log("que loco pa, te conectaste con el mail");
                req.session.user=users;
              }
            })
          }
        })
    }
};

module.exports = loginController;
