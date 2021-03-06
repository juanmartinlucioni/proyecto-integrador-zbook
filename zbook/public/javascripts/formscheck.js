window.addEventListener("load", function () {

    // REGISTER CHECK
    form = document.querySelector(".register-form")
    var username = document.forms['reg-form']['username'];
    var email = document.forms['reg-form']['email'];
    var password = document.forms['reg-form']['psw'];
    var password_confirm = document.forms['reg-form']['pswconfirm'];
    var answer = document.forms['reg-form']['answer'];

    //VALIDACIONES ON CHANGE
    //validacion de usuario
    username.onchange = function(){
    if (username.value.length<=3){
        UIkit.notification({
        message: "<span uk-icon='warning'></span> Username must be at least 4 characters!",
        status: 'danger',
        pos: 'bottom-left',
        timeout: 5000
        });;
        username.style.border = "2px solid red";
        username.focus();
    }
    else {
        username.style.border = "2px solid #65FF00";
    }
    }
    // validacion password
    password.onchange = function () {
    if (password.value.length <= 5) {
        UIkit.notification({
        message: "<span uk-icon='warning'></span> Password must be at least 6 characters!",
        status: 'danger',
        pos: 'bottom-left',
        timeout: 5000
        });;
        password.style.border = "2px solid red";
        password.focus();
    } else {
        password.style.border = "2px solid #65FF00";
    }
    }
    // validacion verificacion psw
    password_confirm.onchange = function () {
    if (password_confirm.value === password.value) {
        password_confirm.style.border = "2px solid #65FF00";
    } else {
        UIkit.notification({
        message: "<span uk-icon='warning'></span> Password do not match!",
        status: 'danger',
        pos: 'bottom-left',
        timeout: 5000
        });;
        password_confirm.style.border = "2px solid red"
        password_confirm.focus();
    }
    }
    // validacion respuesta
    answer.onchange = function () {
    if (answer.value <= 0) {
        UIkit.notification({
        message: "<span uk-icon='warning'></span> Please enter an answer for the security question",
        status: 'danger',
        pos: 'bottom-left',
        timeout: 5000
        });;
        answer.style.border = "2px solid red"
        answer.focus();
        
    } else {
        answer.style.border = "2px solid #65FF00";
    }
    }

    // validacion de email
    function validateEmail(emailIngresado) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var testear = re.test(String(emailIngresado).toLowerCase())
    if (testear !== true) {
        UIkit.notification({
        message: "<span uk-icon='warning'></span> Please enter a valid email!",
        status: 'danger',
        pos: 'bottom-left',
        timeout: 5000
        });
        email.style.border = "2px solid red";
        email.focus();
        return false
    }
    else{
        email.style.border = "2px solid #65FF00";
    }
    }
    email.onchange = function(){
    emailIngresado = email.value
    validateEmail(emailIngresado)
    
    }
})

    // form.addEventListener("submit",function(event){
    //     event.preventDefault()
    //     var nuevoUsuario= document.getElementById("reg-user").value;
    //     var nuevoEmail = document.getElementById("reg-email").value;
    //     var regPassword = document.getElementById("reg-psw").value;
    //     var regPasswordConfirm = document.getElementById("reg-pswconfirm").value;
    //     if ((nuevoUsuario.length <=3)){
    //         UIkit.notification({
    //         message: "<span uk-icon='warning'></span> Username must be at least 4 characters",
    //         status: 'danger',
    //         pos: 'bottom-left',
    //         timeout: 5000
    //         });
    //         username.style.border = "2px solid red";
    //         username.focus();
    //     }
    //     else if (validateEmail(nuevoEmail) == false) {

    //     }
    //     else if ((regPassword.length < 6)) {
    //         UIkit.notification({
    //           message: "<span uk-icon='warning'></span> Password must be at least 6 characters",
    //           status: 'danger',
    //           pos: 'bottom-left',
    //           timeout: 5000
    //         });
    //         password.style.border = "2px solid red";
    //         password.focus();
    //     }
    //     else if (regPassword !== regPasswordConfirm) {
    //           UIkit.notification({
    //             message: "<span uk-icon='warning'></span> Password do not match!",
    //             status: 'danger',
    //             pos: 'bottom-left',
    //             timeout: 5000
    //           });
    //           password_confirm.style.border = "2px solid red"
    //           password_confirm.focus();
    //     }
    // })