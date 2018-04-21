/**
 * Created by hou on 2018/4/16.
 */
const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const category = require('./category')
const News = sequelize.define('news', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    author: {type: Sequelize.STRING, allowNull: true},
    origin: {type: Sequelize.STRING, allowNull: true},
    thumb: {type: Sequelize.STRING, allowNull: true},
    content: {type: Sequelize.STRING, allowNull: true}
});
News.belongsTo(category);
module.exports = News;
