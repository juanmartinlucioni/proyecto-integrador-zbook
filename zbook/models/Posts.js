const { Sequelize } = require('sequelize');
const Sequelize = require('sequelize');
const db = require('../database')

const posts = db.define("posts", {
    title: {
        type: Sequelize.STRING
    }
    // todas las variable que tiene el objeto posts en la db
})

module.exports = posts;