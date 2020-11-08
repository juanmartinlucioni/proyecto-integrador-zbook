const db = require('../config/database/database');
const Posts = require('../config/database/models/Posts');
const Usuarios = require('../config/database/models/Usuarios');
// const Comments = require('../config/database/models/Comments');
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
            return res.render("postDetails", {
                    title: "Post Details",
                    detallesPost: foundPost,
                    });
            }
        })
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