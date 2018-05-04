const personMode = _loadModel('websiteUser', 'person')
module.exports = function (id) {
    return personMode.findOne({
        where: {
            userId: id
        },
    });
}