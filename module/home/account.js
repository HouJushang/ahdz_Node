const router = require('../router');
const getPersonByUserId = _loadQuery('user', 'getPersonByUserId')
router.all('/account', async (ctx, next) => {
    if(ctx.session.homeLogin == null){
        ctx.redirect('/')
    }else {
        await next()
    }
})

router.get('/account/info', async (ctx) => {
    console.log(ctx.session.homeLogin)
    if(ctx.session.homeLogin.type == 1){
        ctx.body = await ctx.render('home/account/companyInfo', {account: 111})
    }else if (ctx.session.homeLogin.type == 0){
        const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
        console.log(psersonInfo)
        ctx.body = await ctx.render('home/account/personInfo', {
            psersonInfo,
        })
    }else{
        ctx.redirect('/')
    }
})