const router = require('../router');
const svgCaptcha = require('svg-captcha');
router.get('/captcha', async (ctx) => {
    try {
        var captcha = svgCaptcha.create();
        ctx.session.captcha = captcha.text;
        ctx.body = captcha.data;
    } catch (e) {
        ctx.body = _errorResponse(e.message);
    }
})