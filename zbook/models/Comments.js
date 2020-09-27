const Sequelize = require('sequelize');
const db = require('../config/database/database')

const Comments = db.define("comments", {
    title: {
        type: Sequelize.STRING
    }
    // todas las variable que tiene el objeto comments en la db
})

module.exports = Comments;