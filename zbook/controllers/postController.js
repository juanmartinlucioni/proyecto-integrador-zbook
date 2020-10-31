let listaUsuarios = require('../modules/usersModule');
let listaPosts = require('../modules/postsModule');
let listaComentarios = require('../modules/commentsModule');
let postController = {
    index: function (req, res) {
        if (req.session.user == undefined) {
            return res.redirect('/')
        } else {
            return res.render("post", {
                title: "Create a Post"
            });
        }
    },
    details: function (req, res) {
        let idPost = req.params.id;
        let detallesPost = listaPosts.pullPostDetails(idPost);
        let commentsPost = listaComentarios.pullPostComments(idPost)
        if (detallesPost == "F") {
            return res.render("notFound", {
                title: "Post Not Found",
                notFound: "Post"                
            })
        } else {
            return res.render("postDetails", {
                title: 'Post Details',
                listaUsuarios: listaUsuarios.lista,
                detallesPost: detallesPost,
                commentsPost: commentsPost,
            })
        }
    },
    add: (req, res) => {
        let formData = req.body
        newPost = {
            caption: formData.caption,
            imageId: formData.url,
        }
        db.create(newPost)
        res.redirect('/home')
    }
};



module.exports = postController;