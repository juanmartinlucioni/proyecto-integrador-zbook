const db = require('../config/database/database');
const Posts = require('../config/database/models/Posts');
const Usuarios = require('../config/database/models/Usuarios');
const Comments = require('../config/database/models/Comments');
const op = db.Sequelize.Op;
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
        let idPosts = req.params.id;
        Posts.findByPk(idPosts, {
            include: [{
                model: Usuarios,
                as: 'user',
                order: [[{Posts},'fechaCreacion','DESC']]
            },
            {
                model: Comments,
                as: 'comments',
                order: [[{Comments},'fechaCreacion','DESC']],
                include: [{
                    model: Usuarios,
                    as: 'user'
                }]
            }]
        })
        .then((foundPost) => {
            if(foundPost == undefined){
                return res.render('notFound', { title: "Post Not Found",
                  notFound: "Post"
                });
            } else {
                // return res.send(foundPost)
            return res.render("postDetails", {
                    title: "Post Details",
                    detallesPost: foundPost,
                    });
            }
        })
    },
    add: (req, res) => {
        let formData = req.body
        let date = new Date()
        dateNoTime = date.toJSON().substring(0,10)
        newPost = {
            idusuario: req.session.user.id,
            textoPost: formData.caption,
            fechaCreacion: dateNoTime,
            url: '/images/poststemp/' + formData.url + '.jpg',
        }
        console.log(newPost);
        Posts.create(newPost)
        return res.redirect('/profile')
    },
    edit: (req, res) => {
        if (req.session.user == undefined) {
            return res.redirect('/')
        } else {
            idPost = req.params.id
            Posts.findByPk(idPost, {
                include: [{
                    model: Usuarios,
                    as: 'user',
                    order: [[{Posts},'fechaCreacion','DESC']]
                }]
            })
            .then((details) => {
                if (details.user.id != req.session.user.id) {
                    return res.redirect('/profile')
                } else {
                    return res.render('editPost', {
                        title: "Edit Post",
                        details: details
                    })
                }
            })  
        }
    },
    update: (req, res) => {
        let idPost = req.params.id
        let formData = req.body
        updateData = {
            url: formData.picture,
            textoPost: formData.caption,
        }
        Posts.update({
            url: updateData.url,
            textoPost: updateData.textoPost,
        },
        {
            where: {
                id: idPost
            }
        })
        return res.redirect('/post/' + idPost)
    },
    delete: (req, res) => {
        if (req.session.user == undefined) {
            return res.redirect('/')
        } else {
            //agregar redirect si no es el usuario dueño del post
            idPost = req.params.id
            Posts.findByPk(idPost, {
                include: [{
                    model: Usuarios,
                    as: 'user',
                    order: [[{Posts},'fechaCreacion','DESC']]
                }]
            })
            .then((details) => {
                if (details.user.id != req.session.user.id) {
                    return res.redirect('/profile')
                } else {
                    return res.render('deletePost', {
                        title: "Delete Post",
                        details: idPost
                    })
                }
            })
            
        }
    },
    destroy: (req, res) => {
        let idPost = req.params.id
        Posts.destroy({
            where: {
                id: idPost
            }
        })
        return res.redirect('/profile')
    }
};



module.exports = postController;