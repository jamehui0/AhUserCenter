module.exports = function (app) {
    app.use(function(req,res,next){
        //1.根据请求url选中顶部,侧边菜单
        res.locals.activeNav = req.path.split('/')[1];
        next();
    });

    app.get('/', function (req, res) {
        res.render('index',{title:'index'});
    });
    app.use('/attrType', require('./attrType'));
};