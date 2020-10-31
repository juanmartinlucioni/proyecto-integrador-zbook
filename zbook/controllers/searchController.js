const db = require('../config/database/database');
const op = db.Sequelize.Op;
const Usuarios = require('../config/database/models/Usuarios')
const controller = {
    results: (req, res) => {
    searchUser = req.query.search
    console.log(searchUser);
    Usuarios.findAll({
        where: {
            [op.or]: [
                {username: {[op.like]: '%' + searchUser + '%'}},
                {email: {[op.like]: '%' + searchUser + '%'}}
            ]
            }
        })
        .then((results)=>{
          if (results.length > 0){
            res.render("search",{ 
                title: "Search",
                results: results
            });
            // res.send(results)
          }
          else {
              res.render("notFound", {
                title: "Not Found", 
                notFound:"Results"})
          }
        })
      
    
    },
}

module.exports = controller