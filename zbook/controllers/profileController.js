const db = require('../config/database/database');
const Posts = require('../config/database/models/Posts')
const Usuarios = require('../config/database/models/Usuarios')
const op = db.Sequelize.Op;
const controller = {
    index: (req, res) => {
        if (req.session.user != undefined) {
          return res.redirect('/profile/'+ req.session.user.id);
        } else {
          return res.redirect('/login');
        }
    },
    id: (req, res) => {
        let idProfile = req.params.id;
        Usuarios.findByPk(idProfile)
        .then((foundUser)=> {
            if (foundUser == undefined) {
                    return res.render('notFound', {
                        title: "Profile Not Found",
                        notFound: "Profile"
                });            
            } else {
                Posts.findAll({
                    where: {
                        idusuario: {[op.like]: foundUser.id}
                    }
                })
                .then((postList) => {
                    return res.render("profile", {
                        title: "Profile",
                        details: foundUser,
                        post: postList,
                    });
                })
            }
        })
        
    },
}

module.exports = controller