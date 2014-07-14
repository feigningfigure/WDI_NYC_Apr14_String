var express = require("express");
var bodyParser = require("body-parser");
var methodOverride = require("method-override");
var app = express();

//connect to db
global.mongoose = require('mongoose');
global.db = mongoose.connect("mongodb://localhost/penguin_pals");

//server config
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(methodOverride());
app.use(express.static(__dirname + "/public"));

//routes
var penguinsController = require(__dirname + '/penguinsController.js');
app.get('/api/penguins', penguinsController.index);
app.post('/api/penguins', penguinsController.create);
app.put('/api/penguins/:id', penguinsController.update);
app.delete('/api/penguins/:id', penguinsController.delete);

app.listen(8000, function(){
	console.log('listening on 8000');	
});

app.get('/', function(req, res){
	res.sendfile('index.html');
});
