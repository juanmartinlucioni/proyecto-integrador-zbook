module.exports = function(sequelize, dataTypes) {
const Post = sequelize.define("post", {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true
        },
        idusuario: {
            type: dataTypes.INTEGER
        },
        textoPost: {
            type: dataTypes.STRING
        },
        fechaCreacion: {
            type: dataTypes.DATE
        },
        url: {
            type: dataTypes.STRING
        },  // todas las variable que tiene el objeto usuarios en la db
    },
    {
        timestamps: false,
        tableName: "post"
    }
);

Post.associate = function(models) {
    Post.belongsTo(models.usuarios, {
        as: 'user',
        foreignKey: 'idusuario',
    }),
    Post.hasMany(models.comments, {
        as: 'comments',
        foreignKey: 'idpost',
    })
}
    return Post
}