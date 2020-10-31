const { Sequelize } = require('sequelize');
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
        profilepicture: {
            type: Sequelize.DataTypes.STRING
        }
    },
    {
        timestamps: false,
    }
);

module.exports = Usuario;