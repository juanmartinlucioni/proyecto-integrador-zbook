const controller = {
    index: (req, res) => {
        res.render("profile", { title: "Profile" }); //eventualmente este title tiene que ser el nombre de la persona a quien pertenece el perfil
    },
}

module.exports = controller