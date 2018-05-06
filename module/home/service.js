const router = require('../router');
const findServiceWithPage = _loadQuery('home', 'findServiceWithPage')
const findServiceById = _loadQuery('home', 'findServiceById')

router.get('/service/:fenlei', async (ctx) => {
    const pageData = {
        category: ctx.params.fenlei,
        list: await findServiceWithPage({
            leibie: ctx.params.fenlei,
            isShow: 1
        })
    }
    ctx.body = await ctx.render('home/serviceList', pageData)
})
router.get('/serviceContent/:id', async (ctx) => {
    const pageData = {
        detail: await findServiceById(ctx.params.id)
    }
    console.log(pageData)
    ctx.body = await ctx.render('home/serviceContent', pageData)
})