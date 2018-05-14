const router = require('../router');
const findCompanyWithPage = _loadQuery('home', 'findCompanyWithPage')
const findCompanyById = _loadQuery('home', 'findCompanyById')

router.get('/company', async (ctx) => {
    const pageData = {
        list: await findCompanyWithPage(),
        homeLogin: ctx.session.homeLogin
    }
    ctx.body = await ctx.render('home/companyList', pageData)
})
router.get('/companyContent/:id', async (ctx) => {
    const pageData = {
        detail: await findCompanyById(ctx.params.id),
        homeLogin: ctx.session.homeLogin,
    }
    ctx.body = await ctx.render('home/companyDetail', pageData)
})