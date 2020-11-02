const Sequelize = require('sequelize');
const db = require('../database')

const Comments = db.define("comments", {
            id: {
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

    // Comments.associate = function (models) {
    //   Comments.belongsTo(models.Usuarios, {
    //     as: "oneUser",
    //     foreignKey: "idusuarios",
    //   }),
    //   Comments.belongsTo(model.Posts, {
    //     as: "onePost",
    //     foreignKey: "idpost"
    //   })
    // };

module.exports = Comments