const Sequelize = require('sequelize');
const db = require('../database')

module.exports = () => {
        const Posts = db.define("posts", {
            id: {
                type: Sequelize.DataTypes.INTEGER,
                primaryKey: true
            },
            idusuarios: {
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
        }
    );

    Posts.associate = function(models) {
        Posts.belongsTo(models.Usuarios, {
            as: 'oneUser',
            foreignKey: 'idusuarios'
        })
    }

    return Posts
}