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
require('./contentModel/yuanqu');
require('./contentModel/qiye');
require('./contentModel/expert');

//
require('./websiteUser/user');

module.exports = sequelize;
