const db = require('../config/database/database');
const Posts = require('../config/database/models/Posts');
const Usuarios = require('../config/database/models/Usuarios');
let listaUsuarios = require("../modules/usersModule");
let listaPosts = require("../modules/postsModule");
let listaComentarios = require("../modules/commentsModule");

const controller = {
    index: (req, res) => {
    Usuarios.findAll({
        })
            .then((usuarios) => {
                return res.render("feed", {
                  title: "Z-Book",
                  usuarios: usuarios,
                  listaUsuarios: listaUsuarios.lista,
                  listaPosts: listaPosts.lista,
                  listaComentarios: listaComentarios.lista,
                });
            })
        
            .catch(err => console.log(err))
    },
}

module.exports = controller