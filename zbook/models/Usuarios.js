const { Sequelize } = require('sequelize');
const Sequelize = require('sequelize');
const db = require('../database')

const usuarios = db.define("usuarios", {
    title: {
        type: Sequelize.STRING
    }
    // todas las variable que tiene el objeto usuarios en la db
})

module.exports = usuarios;