const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const AdminRole = sequelize.define('admin_role', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    adminId: { type: Sequelize.INTEGER, allowNull: false },
    roleId: { type: Sequelize.INTEGER, allowNull: false },
});
module.exports = AdminRole;
