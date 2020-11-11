const db = require('../database/models');
const Posts = db.post
const Usuarios = db.usuarios
const Comments = db.comments

const controller = {
    index: (req, res) => {
        if (req.session.user == undefined) {
            res.redirect('/')
        } else {
            Posts.findAll({
                include: [{
                    model: Usuarios,
                    as: 'user',
                    
                },
                {
                    model: Comments,
                    as: 'comments',
                    limit: 2,
                    include: [{
                        model: Usuarios,
                        as: 'user'
                    }],
                    order: [[{Comments},'fechaCreacion','DESC']]
                }],
                order: [[{Posts},'fechaCreacion','DESC']]
            })
            .then((posts) => {
                return res.render("explore", {
                        title: "Z-Book",
                        listaPosts: posts,
                        });
            })
            // Usuarios.findAll({
            //     })
            //         .then((usuarios) => {
                        
            //         })
                
            //         .catch(err => console.log(err))
        }
    },
}

module.exports = controller