/**
 * Created by hou on 2018/4/15.
 */
const router = require('../../router');
const Sequelize = require('Sequelize')
const Op = Sequelize.Op
const categoryModel = _loadModel('content', 'category')
const getCategory = _loadQuery('category', 'getCategoryById')
const getContentListWithPage = _loadQuery('content', 'getContentListWithPage')
const getContentById = _loadQuery('content', 'getContentById')
const defaultUrl = '/admin/content';
router.get('/admin/content/:categoryId', async (ctx) => {
    try {
        const categoryResult = await getCategory(ctx.params.categoryId);
        const result = await getContentListWithPage(categoryResult.model, {})
        ctx.body = _successResponse('栏目列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/getOneContent', async (ctx) => {
    try {
        const categoryResult = await getCategory(ctx.query.categoryId);
        const result = await getContentById(categoryResult.model, ctx.query.id);
        ctx.body = _successResponse('栏目列表获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/content/:categryId', async (ctx) => {
    try {
        const categoryResult = await categoryModel.findOne({where: {id: ctx.params.categryId}});
        const contentModel = _loadModel('content', categoryResult.model)
        const contentResult = await contentModel.create(ctx.request.body);
        ctx.body = _successResponse('栏目添加成功', contentResult);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.put(defaultUrl, async (ctx) => {
    try {
        var result = await roleModel.count({where: {name: ctx.request.body.name, id: {[Op.ne]: ctx.request.body.id}}});
        if (result > 0) {
            ctx.body = _errorResponse('该栏目已经存在', result);
            return false;
        }
        var result = await roleModel.update(ctx.request.body, {where: {id: ctx.request.body.id}})
        if (result) {
            ctx.body = _successResponse('栏目更新成功', result);
        } else {
            ctx.body = _errorResponse('栏目更新失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete(defaultUrl, async (ctx) => {
    try {
        const result = await roleModel.destroy({where: ctx.request.query})
        if (result) {
            ctx.body = _successResponse('角色删除成功', result);
        } else {
            ctx.body = _errorResponse('角色删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

