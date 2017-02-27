var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var ejs = require('ejs');


var app = express();

/*视图模板引擎设置*/
app.engine('jsp',ejs.__express);
app.set('views', path.join(__dirname, 'webapp/WEB-INF/jsp'));
app.set('view engine', 'jsp');

/*ico图标路径*/
app.use(favicon(path.join(__dirname, 'webapp', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
/*静态资源地址*/
app.use(express.static(path.join(__dirname, 'webapp')));

/*路由分发*/
var routes = require('./src/index');

/*路由*/
routes(app);

/*catch 404 and forward to error handler*/
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

/*error handlers*/

/*development error handler
will print stacktrace*/
if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

/*production error handler
no stacktraces leaked to user*/
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});


module.exports = app;
