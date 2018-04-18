const app = require('./bin/app')
const router = require('./module/router');
const session = require('./bin/session')
const config = require('./config/www')
const koaBody = require('koa-body');
const cors = require('koa2-cors');
const serve = require('koa-static');
const co = require('co');
const path = require('path')
const render = require('koa-swig');
const ueditor = require('koa2-ueditor')
require('./util/globalFunction')

app.use(serve(path.join(__dirname, '/public')));
app.context.render = co.wrap(render({
    root: path.join(__dirname, 'views'),
    autoescape: true,
    cache: false, //'memory', // disable, set to false
    ext: 'swig',
    writeBody: false
}));

app.use(cors());

require('./module');

app.keys = ['ahdzsecret'];
app.use(session.module(session.config, app));
app.use(koaBody({ multipart: true }));


app.use(router.routes()).use(router.allowedMethods());



app.listen(config.port);
