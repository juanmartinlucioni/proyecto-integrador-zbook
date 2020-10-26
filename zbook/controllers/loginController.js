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
        db.findAll({
        where: [
            { username: user.username }
        ]
        })
        .then((resultados)=>{
          if (resultados.length > 0){
            console.log("estas logea3 papaaa");
          }
          else{
            console.log("quien te conoce?, registrate logi");
          }
        })
    }
};

module.exports = loginController;
