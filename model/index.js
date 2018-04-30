const sequelize = require('../bin/sequelize')

// userPermission
require('./userPermission/admin');
require('./userPermission/adminRole');
require('./userPermission/menu');
require('./userPermission/role');
require('./userPermission/roleMenu');

//
require('./content/category');
require('./contentModel/news');
require('./contentModel/slide');

module.exports = sequelize;
