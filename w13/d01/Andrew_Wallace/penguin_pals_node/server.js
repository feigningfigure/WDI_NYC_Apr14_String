var express = require("express");
var bodyParser = require("body-parser");
var methodOverride = require("method-override");
var app = express();

//connect to db globally to be available site-wide (outside the scope of just this file)
global.mongoose = require('mongoose');
global.db = mongoose.connect("mongodb://localhost/penguin_pals");

//server config
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true}));
app.use(methodOverride());
app.use(express.static(__dirname + "/public"));

app.listen(8000, function(){
  console.log('Listening on port 8000');
})

app.get('/', function(req, res){
  res.sendfile('index.html');
});
