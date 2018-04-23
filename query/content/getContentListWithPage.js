module.exports = function (model, filter = {},  pageInfo = {currentPage: 1, pageSize: 10}) {
    const contentMode = _loadModel('content', model)
    return contentMode.findAndCountAll({
        where: filter,
        offset: (pageInfo.currentPage - 1) * pageInfo.pageSize,
        limit: pageInfo.pageSize
    });
}