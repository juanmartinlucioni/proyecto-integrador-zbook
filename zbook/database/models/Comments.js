module.exports = function(sequelize, dataTypes) {
const Comments = sequelize.define("comments", {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
            },
            idpost: {
                type: dataTypes.INTEGER,
            },
            idusuario: {
                type: dataTypes.INTEGER,
            },
            texto: {
                type: dataTypes.STRING,
            },
            fechaCreacion: {
                type: dataTypes.DATE,
            },  // todas las variable que tiene el objeto comments en la db
        }, 
        {
            timestamps: true,
        }
);

Comments.associate = function(models) {
    Comments.belongsTo(models.usuarios, {
        as: 'user',
        foreignKey: 'idusuario'
    }),
    Comments.belongsTo(models.post, {
        as: 'comments',
        foreignKey: 'idpost'
    })
}

return Comments
}