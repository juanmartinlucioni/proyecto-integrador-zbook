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
                    errores.push("rip ya existe");
                    return res.send(errores)
                } else {
                    Usuarios.findOne({
                        where: [{
                            email: {[op.like]: nuevoEmail}
                        }]
                    })
                    .then((foundEmail) => {
                        if(foundEmail != null) {
                            errores.push("email usado")
                            // return console.log("email usado");
                        }
                        if ((nuevoUsuario.length <=3)) {
                            errores.push("oh no")
                        }
                        if (validateEmail(nuevoEmail) == false) {
                            errores.push("email wrong wacho")
                        }
                        if ((regPassword.length < 6)) {
                            errores.push("mala pass")
                        }
                        if (regPassword !== regPasswordConfirm) {
                            errores.push("no pego")
                        }
                        if (regAge < 13) {
                            errores.push("tenes que ser mayor de 13")
                        }
                        if (errores.length > 0){
                            return res.send(errores)
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