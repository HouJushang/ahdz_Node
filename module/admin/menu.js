const router = require('../router');
const menuModel = _loadModel('menu');
router.get('/admin/menu', async (ctx) => {
    try {
        const result = await menuModel.findAll();
        ctx.body = _successResponse('菜单列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e)
    }
})
router.post('/admin/menu', async (ctx) => {
    try {
        const result = await menuModel.create(ctx.request.body)
        ctx.body = _successResponse('菜单添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e)
    }
})
router.put('/admin/menu', async (ctx) => {
    try {
        const result = await menuModel.update(ctx.request.body.values, ctx.request.body.where)
        ctx.body = _successResponse('菜单更新成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e)
    }
})
router.delete('/admin/menu', async (ctx) => {
    try {
        const result = await menuModel.destroy({where: ctx.request.body})
        ctx.body = _successResponse('菜单删除成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e)
    }
})