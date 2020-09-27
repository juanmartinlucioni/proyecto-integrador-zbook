const Sequelize = require('sequelize');
const db = require('../config/database/database')

const Comments = db.define("comments", {
        idcomments: {
            type: Sequelize.DataTypes.INTEGER,
            primaryKey: true,
        },
        idpost: {
            type: Sequelize.DataTypes.INTEGER,
        },
        idusuarios: {
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

module.exports = Comments;