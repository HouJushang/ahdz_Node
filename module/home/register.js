const router = require('../router');
const countUserByWhere = _loadQuery('user', 'countUserByWhere');
const addUser = _loadQuery('user', 'addUser');
const addCompany = _loadQuery('user', 'addCompany')
const getCompanyByUserId = _loadQuery('user', 'getCompanyByUserId')
const userModel = _loadModel('websiteUser', 'user')
const addPerson = _loadQuery('user', 'addPerson')

router.post('/register/company', async (ctx) => {
    var result = await countUserByWhere({phone: ctx.request.body.phone});
    if(result > 0){
        ctx.body = _errorResponse('该手机号码已经存在', result);
        return false;
    }
    var result = await addUser({
        phone: ctx.request.body.phone,
        password: ctx.request.body.password,
        type: 1,
    });

    const comResult = await getCompanyByUserId(result.id);
    if (comResult) {
        const result = updateCompanyByUserId(result.id, {
            companyName: ctx.request.body.company_name
        })
        if (result) {
            ctx.body = _successResponse('企业信息操作成功', result);
        } else {
            ctx.body = _errorResponse('企业信息操作失败', result);
        }
        return false;
    } else {
        ctx.request.body.userId = ctx.params.userId;
        const result = addCompany({
            companyName: ctx.request.body.company_name
        });
        if (result) {
            ctx.body = _successResponse('企业信息操作成功', result);
        } else {
            ctx.body = _errorResponse('企业信息操作失败', result);
        }
        return false;
    }
    ctx.body = _successResponse('添加成功', result);
})

router.post('/register/person', async (ctx) => {
    var result = await countUserByWhere({phone: ctx.request.body.phone});
    if(result > 0){
        ctx.body = _errorResponse('该手机号码已经存在', result);
        return false;
    }
    var result = await addUser({
        phone: ctx.request.body.phone,
        password: ctx.request.body.password,
        type: 0,
    });
    await addPerson({userId: result.id});
    ctx.body = _successResponse('添加成功', result);
})
router.post('/register/login', async (ctx) => {
    if(ctx.session.captcha.toLowerCase() != ctx.request.body.code.toLowerCase()){
        ctx.body = _errorResponse("验证码错误");
        return false;
    }
    var result = await userModel.findOne({where: {phone: ctx.request.body.phone, password: ctx.request.body.password}});
    if(result){
        ctx.session.homeLogin = result
        ctx.body = _successResponse('登录成功', result);
    }else{
        ctx.body = _errorResponse('用户名或者密码错误', result);
    }

})