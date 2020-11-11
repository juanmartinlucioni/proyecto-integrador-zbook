module.exports = function(sequelize, dataTypes) {
const Usuario = sequelize.define('usuarios', {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true
        },
        username: {
            type: dataTypes.STRING
        },
        password: {
            type: dataTypes.STRING
        },
        email: {
            type: dataTypes.STRING
        },
        age: {
            type: dataTypes.INTEGER
        },
        birthday: {
            type: dataTypes.DATE
        }, 
        profilePicture: {
            type: dataTypes.STRING
        },
        securityQuestion: {
            type: dataTypes.INTEGER
        },
        answer: {
            type: dataTypes.STRING
        }
    },
    {
        timestamps: false,
    }
);

Usuario.associate = function(models) {
    Usuario.hasMany(models.comments, {
        as: "comments",
        foreignKey: "idusuario",
    }),
    Usuario.hasMany(models.post, {
        as: "posts",
        foreignKey: "idusuario",
    })
}


return Usuario;
}