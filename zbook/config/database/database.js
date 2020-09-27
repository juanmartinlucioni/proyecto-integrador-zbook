const Sequelize = require('sequelize');
const db = new Sequelize('zbook', 'root', '', {
    host: 'localhost',
    dialect: 'mysql',

    pool: {
        max: 5,
        min: 0,
        acquire: 3000,
        idle: 10000
    }
});

module.exports = db;