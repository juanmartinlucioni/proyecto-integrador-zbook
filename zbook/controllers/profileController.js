let profile = require("../modules/usersModule");
let posts = require("../modules/postsModule");
const controller = {
    id: (req, res) => {
        let idProfile = req.params.id;
        let detallesProfile = profile.pullUser(idProfile);
        let detallesPost = posts.pullPost(idProfile);
        res.render("profile", { 
            details: detallesProfile,
            post: detallesPost,
        }); //eventualmente este title tiene que ser el nombre de la persona a quien pertenece el perfil
    },
}

module.exports = controller