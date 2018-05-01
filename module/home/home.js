/**
 * Created by hou on 2018/4/10.
 */
const router = require('../router');
const getContentList = _loadQuery('content', 'getContentList')
router.get('/', async (ctx) => {
    const category1 = getContentList('news', {categoryId: 1, status: 1}, {pageSize: 6});
    const category2 = getContentList('news', {categoryId: 2, status: 1}, {pageSize: 6});
    const category3 = getContentList('news', {categoryId: 3, status: 1}, {pageSize: 6});
    const category4 = getContentList('news', {categoryId: 4, status: 1}, {pageSize: 6});
    const category7 = getContentList('news', {categoryId: 7, status: 1}, {pageSize: 6});

    const slide10 = getContentList('slide', {categoryId: 10, status: 1});
    const slide11 = getContentList('slide', {categoryId: 11, status: 1});
    const slide12 = getContentList('slide', {categoryId: 12, status: 1});
    const slide13 = getContentList('slide', {categoryId: 13, status: 1});
    const slide14 = getContentList('slide', {categoryId: 14, status: 1});
    const slide15 = getContentList('slide', {categoryId: 15, status: 1});

    const yuanqu = getContentList('yuanqu', {categoryId: 17, status: 1}, {pageSize: 5});
    const qiye = getContentList('qiye', {categoryId: 18, status: 1}, {pageSize: 5});

    var pageData = {
        slide10: await slide10,
        slide11: await slide11,
        slide12: await slide12,
        slide13: await slide13,
        slide14: await slide14,
        slide15: await slide15,
        category1: await category1,
        category2: await category2,
        category3: await category3,
        category4: await category4,
        category7: await category7,
        yuanqu: await yuanqu,
        qiye: await qiye
    }
    Object.assign(pageData, {
        category1Top: pageData.category1.shift(),
        category2Top: pageData.category2.shift(),
        category3Top: pageData.category3.shift(),
        category4Top: pageData.category4.shift(),
        category7Top: pageData.category7.shift()
    })
    console.log(pageData);
    ctx.body = ctx.body = await ctx.render('home/index', pageData)
})