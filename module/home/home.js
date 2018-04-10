/**
 * Created by hou on 2018/4/10.
 */
const router = require('../router');
router.get('/', async (ctx) => {
    ctx.body = ctx.body = await ctx.render('home/index', {aaa: 111222})
})