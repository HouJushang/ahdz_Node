const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const Admin = sequelize.define('admin', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    adminId: { type: Sequelize.INTEGER, allowNull: false },
    roleId: { type: Sequelize.INTEGER, allowNull: false },
});
module.exports = Admin;