const app = require('./bin/app')
const router = require('./module/router');
const session = require('./bin/session')
const config = require('./config/www')
const bodyParser = require('koa-bodyparser');
const cors = require('koa2-cors');
const co = require('co');
const path = require('path')
const render = require('koa-swig');
require('./util/globalFunction')
require('./module');


app.context.render = co.wrap(render({
    root: path.join(__dirname, 'views'),
    autoescape: true,
    cache: false, //'memory', // disable, set to false
    ext: 'swig',
    writeBody: false
}));

app.use(cors());

app.keys = ['ahdzsecret'];
app.use(session.module(session.config, app));
app.use(bodyParser());
app.use(router.routes()).use(router.allowedMethods());

app.listen(config.port);
