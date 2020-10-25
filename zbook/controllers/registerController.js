const db = require('../config/database/models/Usuarios')
const bcrypt = require('bcryptjs')
const controller = {
    index: (req, res) => {
        res.render("register", { title: "Register" });
    },
    add: (req, res) => {
        let formData = req.body
        let userPassword = bcrypt.hashSync(req.body.psw, 10)
        newUser = {
            username: formData.username,
            email: formData.email,
            password: userPassword,
            age: formData.age,
            birthday: formData.birthday
        }
        db.create(newUser)
        res.redirect('/login')
    }
}

module.exports = controller