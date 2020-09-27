const db = require('../config/database/database')
const Usuarios = require('../config/database/models/Usuarios');

const controller = {
    index: (req, res) => {
    Usuarios.findAll({
        })
            .then((usuarios) => {
                res.render("feed", { title: "Z-Book", usuarios: usuarios });
            })
        
            .catch(err => console.log(err))
    },
}

module.exports = controller