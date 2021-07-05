require('dotenv').config();

const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
// const expressValidator = require('express-validator');


// const indexRouter = require('./routes/index');

const productRouter = require('./routes/productRouter');
const adjRouter = require('./routes/adjTrxRouter');

const app = express();

// Setup EJS
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
// app.use(expressValidator())

//PUT ROUTES HERE
// app.use('/', indexRouter);
// app.use('/auth', authRouter);
app.use('/product', productRouter);
app.use('/adjTrx', adjRouter);

//END ROUTES

// Handler 404
app.use(function(req, res, next) {
  next(createError(404));
});

// Handler Error
app.use(function(err, req, res, next) {
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
