let profile = require("../modules/usersModule");
let posts = require("../modules/postsModule");
const controller = {
    index: (req, res) => {
        res.render('notFound', {
            title: "Profile not found",
            notFound: "Profile"
        }); // Eventualmente esto va a redirigir al perfil del usuario loggeado
    },
    id: (req, res) => {
        let idProfile = req.params.id;
        let detallesProfile = profile.pullUser(idProfile);
        let detallesPost = posts.pullPost(idProfile);
        if (detallesProfile == "F") {
            res.render('notFound', {
                title: "Profile Not Found",
                notFound: "Profile"
            });            
        } else {
            res.render("profile", {
                title: "Profile",
                details: detallesProfile,
                post: detallesPost,
            }); //eventualmente este title tiene que ser el nombre de la persona a quien pertenece el perfil
        }
    },
}

module.exports = controller