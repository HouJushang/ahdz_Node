const jobMode = _loadModel('websiteUser', 'job')
module.exports = function (id) {
    return jobMode.findOne({
        where: {
            id: id
        },
    });
}