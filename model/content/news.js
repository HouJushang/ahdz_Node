/**
 * Created by hou on 2018/4/16.
 */
const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const category = require('./category')
const News = sequelize.define('news', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING, allowNull: false },
    description: { type: Sequelize.STRING, allowNull: true},
    keywords: { type: Sequelize.STRING, allowNull: true },
    image: { type: Sequelize.STRING, allowNull: true },
    content: {type: Sequelize.STRING, allowNull: false}
});
News.belongsTo(category);
module.exports = News;
