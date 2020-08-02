const express = require('express');
const exphbs = require("express-handlebars");
var methodOverride = require('method-override');

const app = express();
const port = 80

var db = require("./models");

app.use(methodOverride("_method"));
app.use(express.static('public'));

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

// Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.urlencoded());

// Parse JSON bodies (as sent by API clients)
app.use(express.json());

app.use(require('./controllers/index_controller'));
app.use(require('./controllers/hotel_controller'));
app.use(require('./controllers/payment_controller'));
app.use(require('./controllers/status_controller'));

app.use('/', function(req, res) {
    res.render('index');
});

db.sequelize.sync().then(function() {
  app.listen(port, () => 
  console.log("----------------------"),
  console.log(` APP listening at PORT : ${port}`));
});