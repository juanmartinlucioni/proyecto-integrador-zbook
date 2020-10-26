const db = require('../config/database/database');
const op = db.Sequelize.Op;
const Usuarios = require('../config/database/models/Usuarios')
const bcrypt = require('bcryptjs')
const controller = {
    index: (req, res) => {
        res.render("register", { title: "Register" });
    },
    add: (req, res) => {
        let formData = req.body
        let userPassword = bcrypt.hashSync(req.body.psw, 10)

        function validateEmail(emailIngresado) {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            var testear = re.test(String(emailIngresado).toLowerCase())
            if (testear !== true) {
                // UIkit.notification({
                // message: "<span uk-icon='warning'></span> Please enter a valid email!",
                // status: 'danger',
                // pos: 'bottom-left',
                // timeout: 5000
                // });
                // email.style.border = "2px solid red";
                // email.focus();
                return false
            }
            else{
                // email.style.border = "2px solid #65FF00";
            }
        }

        function regCheck() {
            let nuevoUsuario= formData.username;
            let nuevoEmail = formData.email;
            let regPassword = formData.psw;
            let regPasswordConfirm = formData.pswconfirm;
            Usuarios.findAll({
                where: [{
                    username: {[op.like]: nuevoUsuario}
                }]
            })
            .then((foundUser) => {
                if(foundUser.length > 0) {
                    return console.log("rip ya existe");
                } else if ((nuevoUsuario.length <=3)){
                //     UIkit.notification({
                //     message: "<span uk-icon='warning'></span> Username must be at least 4 characters",
                //     status: 'danger',
                //     pos: 'bottom-left',
                //     timeout: 5000
                //     });
                //     username.style.border = "2px solid red";
                //     username.focus();
                // preventDefault()
                return console.log("oh no")
                }
                else if (validateEmail(nuevoEmail) == false) {
                    return console.log("email wrong wacho")
                }
                else if ((regPassword.length < 6)) {
                    // UIkit.notification({
                    // message: "<span uk-icon='warning'></span> Password must be at least 6 characters",
                    // status: 'danger',
                    // pos: 'bottom-left',
                    // timeout: 5000
                    // });
                    // password.style.border = "2px solid red";
                    // password.focus();
                    return console.log("mala pass")
                }
                else if (regPassword !== regPasswordConfirm) {
                    // UIkit.notification({
                    //     message: "<span uk-icon='warning'></span> Password do not match!",
                    //     status: 'danger',
                    //     pos: 'bottom-left',
                    //     timeout: 5000
                    // });
                    // password_confirm.style.border = "2px solid red"
                    // password_confirm.focus();
                    return console.log("no pego")
                } else {
                    newUser = {
                    username: formData.username,
                    email: formData.email,
                    password: userPassword,
                    birthday: formData.birthday,
                    // securityQuestion: formData.question,
                    // answer: formData.answer
                    }
                    console.log(newUser);
                    Usuarios.create(newUser)
                    return res.redirect('/login')
                }        
            })
        }

        regCheck()

    }
}

module.exports = controller