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
        profilePicture: {
            type: Sequelize.DataTypes.STRING
        } // todas las variable que tiene el objeto usuarios en la db
    },
    {
        timestamps: false,
    }
);

module.exports = Usuario;