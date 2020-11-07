const Sequelize = require('sequelize');
const db = require('../database')
const Usuario = require('../models/Usuarios')
const Post = require('../models/Posts')

const Comment = db.define("comments", {
            id: {
                type: Sequelize.DataTypes.INTEGER,
                primaryKey: true,
            },
            idpost: {
                type: Sequelize.DataTypes.INTEGER,
            },
            idusuario: {
                type: Sequelize.DataTypes.INTEGER,
            },
            texto: {
                type: Sequelize.DataTypes.STRING,
            },
            fechaCreacion: {
                type: Sequelize.DataTypes.DATE,
            },  // todas las variable que tiene el objeto comments en la db
        }, 
        {
            timestamps: false,
        }
);

// Comment.belongsTo(Usuario, {
//     as: "user",
//     foreignKey: "idusuario",
// });
db.models.usuarios.hasMany(Comment, {
    as: "comments",
    foreignKey: "idusuario",
})

Comment.belongsTo(Usuario, {
    as: 'user',
    foreignKey: 'idusuario'
})

// Comment.belongsTo(Post, {
//     as: "post",
//     foreignKey: "idpost"
// })

module.exports = Comment