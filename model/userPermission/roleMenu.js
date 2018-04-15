const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const RoleMenu = sequelize.define('role_menu', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    roleId: { type: Sequelize.INTEGER, allowNull: false },
    menuId: { type: Sequelize.INTEGER, allowNull: false },
});
module.exports = RoleMenu;
