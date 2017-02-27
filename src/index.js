module.exports = function (app) {
    app.use(function(req,res,next){
        //1.根据请求url选中顶部,侧边菜单
        res.locals.activeNav = req.path.split('/')[1];
        next();
    });

    app.get('/', function (req, res) {
        res.render('index',{title:'index'});
    });
    /*属性类型*/
    app.use('/attrType', require('./attrType'));
    /*属性*/
    app.use('/attribute', require('./attribute'));
    /*安全级别*/
    app.use('/security', require('./security'));
    /*授权管理*/
    app.use('/authorization', require('./authorization'));
};