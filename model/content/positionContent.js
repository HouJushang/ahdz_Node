const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const positionContent = sequelize.define('positionContent', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    positionId: {type: Sequelize.INTEGER, allowNull: false},
    model: {type: Sequelize.STRING, allowNull: false},
    artId: {type: Sequelize.INTEGER, allowNull: false},
});
module.exports = positionContent;
