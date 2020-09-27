const db = require('../config/database/database')
const Usuarios = require('../models/Usuarios');

const controller = {
    index: (req, res) => {
    let users = Usuarios.findAll({
        })
            .then((usuarios) => {
                console.log(usuarios[0].username);
            })
            .then( () => {
                res.render("feed", { title: "Z-Book", usuarios: users });
            })
        
            .catch(err => console.log(err))
    },
}

module.exports = controller