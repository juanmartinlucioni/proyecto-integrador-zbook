const db = require('../config/database/database');
const op = db.Sequelize.Op;
const Usuarios = require('../config/database/models/Usuarios')
const bcrypt = require('bcryptjs')
const controller = {
    index: (req, res) => {
        if (req.session.user != undefined) {
            return res.redirect('/feed')
        } else {
            res.render("register", { title: "Register" });
        }
        
    },
    add: (req, res) => {
        let formData = req.body
        let userPassword = bcrypt.hashSync(req.body.psw, 10)

        function validateEmail(emailIngresado) {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            var testear = re.test(String(emailIngresado).toLowerCase())
            if (testear !== true) {
                return false
            }
        }

        function getAge(dateString) {
            var today = new Date();
            var birthDate = new Date(dateString);
            var age = today.getFullYear() - birthDate.getFullYear();
            var m = today.getMonth() - birthDate.getMonth();
            if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
                age--;
            }
            return age;
        }

        function regCheck() {
            let nuevoUsuario= formData.username;
            let nuevoEmail = formData.email;
            let regPassword = formData.psw;
            let regPasswordConfirm = formData.pswconfirm;
            let regAge = getAge(formData.birthday);
            
            Usuarios.findOne({
                where: [{
                    username: {[op.like]: nuevoUsuario},
                }]
            })
            .then((foundUser) => {
                errores = []
                if(foundUser != null) {
                    // return res.send('ya existe')
                    errores.push("Username already exists");
                    return res.render('registerErrors', {
                        title: "Error in registration",
                        errores: errores
                    })
                } else {
                    Usuarios.findOne({
                        where: [{
                            email: {[op.like]: nuevoEmail}
                        }]
                    })
                    .then((foundEmail) => {
                        if(foundEmail != null) {
                            errores.push("Email already in use")
                        }
                        if ((nuevoUsuario.length <=3)) {
                            errores.push("Username must be longer than three characters")
                        }
                        if (validateEmail(nuevoEmail) == false) {
                            errores.push("Invalid Email used")
                        }
                        if ((regPassword.length < 6)) {
                            errores.push("Password must be at least 6 characters long")
                        }
                        if (regPassword !== regPasswordConfirm) {
                            errores.push("Passwords didn't match")
                        }
                        if (regAge < 13) {
                            errores.push("You must be 13 or older to register")
                        }
                        if (errores.length > 0){
                            return res.render('registerErrors', {
                                title: "Error in Registration",
                                errores: errores
                            })
                        } else {
                            newUser = {
                            username: formData.username,
                            email: formData.email,
                            password: userPassword,
                            age: getAge(formData.birthday),
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
                
                
       
            })

            .catch(err => console.log(err))
        }

        regCheck()

    }
}

module.exports = controller