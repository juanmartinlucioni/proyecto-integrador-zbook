const db = require('../database/models');
const op = db.Sequelize.Op;
const Usuarios = db.usuarios
const Posts = db.post
const controller = {
    results: (req, res) => {
        if (req.session.user != undefined) {
        searchParam = req.query.search
        console.log(searchParam);
        
        Usuarios.findAll({
            where: {
                [op.or]: [
                    {username: {[op.like]: '%' + searchParam + '%'}},
                    {email: {[op.like]: '%' + searchParam + '%'}}
                ]
                }
            })
            .then((userResults)=>{
            Posts.findAll({
                where: {
                    textoPost: {[op.like]: '%' + searchParam + '%' }
                }
            })
            .then((postResults)=>{
            if (userResults.length > 0 || postResults.length > 0 ){
                res.render("search",{ 
                    title: "Search",
                    results: userResults,
                    post: postResults
                });
                // res.send(results)
            }
            else {
                res.render("notFound", {
                    title: "Not Found", 
                    notFound:"Results"})
            }
            })
            })
        } else {
          return res.redirect('/login');
        }
      
    
    },
}

module.exports = controller