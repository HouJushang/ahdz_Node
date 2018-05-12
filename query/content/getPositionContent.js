const sequelize = _loadSequelize();
const positionModel = _loadModel('content', 'position');
module.exports = async function(positionId) {
    const positionResult = await positionModel.findOne({where: {id : positionId}});
    const contentModel = _loadModel('contentModel', positionResult.model)
    const tableName = contentModel.getTableName();
    const sql = `SELECT ${tableName}.* FROM ${tableName},positionContents  WHERE positionContents.positionId = ${positionId} AND positionContents.artId = ${tableName}.id `;
    return sequelize.query(sql, { type : sequelize.QueryTypes.SELECT })
}