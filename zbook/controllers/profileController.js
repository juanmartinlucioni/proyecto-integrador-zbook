const db = require('../database/models');
const Posts = db.post
const Usuarios = db.usuarios
const bcrypt = require('bcryptjs')
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
        Usuarios.findByPk(idProfile, {
            include: {
                model: Posts,
                as: 'posts',
            },
            order: [[{Posts},'fechaCreacion','DESC']]
        })
        .then((foundUser)=> {
            if (foundUser == undefined) {
                    return res.render('notFound', {
                        title: "Profile Not Found",
                        notFound: "Profile"
                });            
            } else {
                return res.render("profile", {
                        title: "Profile",
                        details: foundUser,
                        post: foundUser.posts,
                    }
            )}
        })
        
    },
    edit: (req, res) => {
        if (req.session.user != undefined) {
            Usuarios.findByPk(req.session.user.id)
            .then((foundUser)=> {
                return res.render('editProfile', {
                title: "Edit Profile",
                details: foundUser,
            });
            })
        } else {
          return res.redirect('/login');
        }
    },
    update: (req, res) => {
        let formData = req.body
        updateData = {
            email: formData.email,
            birthday: formData.birthday,
            profilepicture: "/images/profilepicstemp/"+ formData.profilepicture +".jpg"
        }
        Usuarios.update({
            email: updateData.email,
            birthday: updateData.birthday,
            profilePicture: updateData.profilepicture
        },
        {
            where: {
                id: req.session.user.id
            }
        })
        return res.redirect('/profile')
    },
    password: (req, res) => {
        if (req.session.user != undefined) {
            Usuarios.findByPk(req.session.user.id)
            .then((foundUser)=> {
                return res.render('changePassword', {
                title: "Change Profile",
                details: foundUser,
            });
            })
        } else {
          return res.redirect('/login');
        }
    },
    passwordChange: (req, res) => {
        let formData = req.body
        errores = []
        if(req.session.user.answer == formData.answer) {
            let newPass = formData.password
            if (newPass.length < 6) {
                errores.push("Password must be at least 6 characters long")
                return res.render('passwordErrors', {
                    title: "Error in Password Change",
                    errores: errores
                })
            } else {
                Usuarios.update({
                    password: bcrypt.hashSync(newPass, 10)
                },
                {
                    where: {
                        id: req.session.user.id
                    }
                })
                return res.redirect('/profile')
            }
        } else {
            errores.push("Security questions answer does not match")
            return res.render('passwordErrors', {
                    title: "Error in Password Change",
                    errores: errores
                })
        }
    }
}

module.exports = controller