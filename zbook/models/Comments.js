const { Sequelize } = require('sequelize');
const Sequelize = require('sequelize');
const db = require('../database')

const comments = db.define("comments", {
    title: {
        type: Sequelize.STRING
    }
    // todas las variable que tiene el objeto comments en la db
})

module.exports = comments;