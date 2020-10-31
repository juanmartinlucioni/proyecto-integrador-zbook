const Sequelize = require('sequelize');
const db = require('../database')

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

    // Posts.associate = function(models) {
    //     Posts.belongsTo(models.Usuarios, {
    //         as: 'oneUser',
    //         foreignKey: 'idusuarios'
    //     })
    // }
module.exports = Post;