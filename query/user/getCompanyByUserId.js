const contentMode = _loadModel('websiteUser', 'company')
module.exports = function (id) {
    return contentMode.findOne({
        where: {
            userId: id
        },
    });
}