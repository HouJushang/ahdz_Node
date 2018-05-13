const router = require('../router');
const getPersonByUserId = _loadQuery('user', 'getPersonByUserId')
const updatePersonByUserId = _loadQuery('user', 'updatePersonByUserId')
const addPerson = _loadQuery('user', 'addPerson')
const updateUserById = _loadQuery('user', 'updateUserById')

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
        ctx.body = await ctx.render('home/account/personInfo', {
            homeLogin: ctx.session.homeLogin,
            psersonInfo,
        })
    }else{
        ctx.redirect('/')
    }
})

router.get('/account/modify', async (ctx) => {
    const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/personModify.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})

router.get('/account/auth', async (ctx) => {
    const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/auth.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})
router.get('/account/resume', async (ctx) => {
    const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/personalResume.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})
router.get('/account/resumeM', async (ctx) => {
    const psersonInfo = await getPersonByUserId(ctx.session.homeLogin.id)
    ctx.body = await ctx.render('home/account/personalResume.swig', {
        homeLogin: ctx.session.homeLogin,
        psersonInfo,
    })
})
router.post('/account/save/:userId', async (ctx) => {
    try {
        const comResult = await getPersonByUserId(ctx.params.userId);
        if (comResult) {
            const result = updatePersonByUserId(ctx.params.userId, ctx.request.body)
            if (result) {
                ctx.body = _successResponse('个人信息操作成功', result);
            } else {
                ctx.body = _errorResponse('个人信息操作失败', result);
            }
        } else {
            ctx.request.body.userId = ctx.params.userId;
            const result = addPerson(ctx.request.body);
            if (result) {
                ctx.body = _successResponse('个人信息操作成功', result);
            } else {
                ctx.body = _errorResponse('个人信息操作失败', result);
            }
        }

    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.post('/account/savePassWord', async (ctx) => {
    try {
        if(ctx.request.body.oldPass != ctx.session.homeLogin.password){
            ctx.body = _errorResponse('原密码不正确');
            return false;
        }

        var result = await updateUserById({
            password: ctx.request.body.password
        }, ctx.session.homeLogin.id);


        if(result) {
            ctx.session.homeLogin.password = ctx.request.body.password
            ctx.body = _successResponse('用户更新成功', result);
        }else{
            ctx.body = _errorResponse('用户更新失败');
        }

    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

