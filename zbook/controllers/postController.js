let listaUsuarios = require('../modules/usersModule');
let listaPosts = require('../modules/postsModule');
let listaComentarios = require('../modules/commentsModule');
let postController = {
    index: function (req, res) {
        return res.render("post", {
            title: "Create a Post"
        });
    },
    details: function (req, res) {
        let idPost = req.params.id;
        let detallesPost = listaPosts.pullPostDetails(idPost);
        let commentsPost = listaComentarios.pullPostComments(idPost)
        return res.render("postDetails", {
            title: 'Post Details',
            listaUsuarios: listaUsuarios.lista,
            detallesPost: detallesPost,
            commentsPost: commentsPost,
        })
    }
};

module.exports = postController;