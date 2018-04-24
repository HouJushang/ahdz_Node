module.exports = function (model, id) {
    const contentMode = _loadModel('content', model)
    return contentMode.findOne({
        where: {
            id: id
        },
    });
}