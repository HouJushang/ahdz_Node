/**
 * Created by hou on 2018/4/16.
 */
const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const category = require('./category')
const Banner = sequelize.define('banner', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: Sequelize.STRING, allowNull: false},
    link: {type: Sequelize.STRING, allowNull: true},
    image: {type: Sequelize.STRING, allowNull: true},
});
Banner.belongsTo(category);
module.exports = Banner;
