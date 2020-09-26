let listaUsuarios = require('../modules/usersModule');
let listaPosts = require('../modules/postsModule');
let listaComentarios = require('../modules/commentsModule');
const controller = {
    index: (req, res) => {
        res.render('feed', {
            title: 'Z-Book',
            listaUsuarios: listaUsuarios.lista,
            listaPosts: listaPosts.lista,
            listaComentarios: listaComentarios.lista
        });
    },
}

module.exports = controller