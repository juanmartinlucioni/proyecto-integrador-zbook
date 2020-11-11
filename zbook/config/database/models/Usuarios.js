const Sequelize = require('sequelize');
const db = require('../database')

const Usuario = db.define('usuarios', {
        id: {
            type: Sequelize.DataTypes.INTEGER,
            primaryKey: true
        },
        username: {
            type: Sequelize.DataTypes.STRING
        },
        password: {
            type: Sequelize.DataTypes.STRING
        },
        email: {
            type: Sequelize.DataTypes.STRING
        },
        age: {
            type: Sequelize.DataTypes.INTEGER
        },
        birthday: {
            type: Sequelize.DataTypes.DATE
        }, 
        profilePicture: {
            type: Sequelize.DataTypes.STRING
        },
        securityQuestion: {
            type: Sequelize.DataTypes.INTEGER
        },
        answer: {
            type: Sequelize.DataTypes.STRING
        }
    },
    {
        timestamps: true,
    }
);


// Usuario.hasMany(Comment, {
//     as: "comments",
//     foreignKey: "idusuario",
// })
// Usuario.hasMany(Posts, {
//     as: "posts",
//     foreignKey: "idusuario",
// })

module.exports = Usuario;