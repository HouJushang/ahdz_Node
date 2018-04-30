module.exports = function (model, filter = {},  pageInfo = {currentPage: 1, pageSize: 10}, order = [['id', 'DESC']]) {
    const contentMode = _loadModel('contentModel', model)
    return contentMode.findAndCountAll({
        where: filter,
        offset: (pageInfo.currentPage - 1) * pageInfo.pageSize,
        limit: pageInfo.pageSize,
        order: order,
    });
}