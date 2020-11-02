const Sequelize = require('sequelize');
const db = require('../database')
const Usuario = require('../models/Usuarios')
const Comments = require('../models/Comments')

const Post = db.define("post", {
        id: {
            type: Sequelize.DataTypes.INTEGER,
            primaryKey: true
        },
        idusuario: {
            type: Sequelize.DataTypes.INTEGER
        },
        textoPost: {
            type: Sequelize.DataTypes.STRING
        },
        fechaCreacion: {
            type: Sequelize.DataTypes.DATE
        },
        url: {
            type: Sequelize.DataTypes.STRING
        },  // todas las variable que tiene el objeto usuarios en la db
    },
    {
        timestamps: false,
        tableName: "post"
    }
);

Post.hasMany(Comments, {
    as: 'comments',
    foreignKey: 'idpost'
})
Usuario.hasMany(Post, {
    as: "posts",
    foreignKey: "idusuario",
})

module.exports = Post;