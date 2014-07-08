var app = require("express")();
var http = require("http").Server(app);

http.listen(8888, function(){
	console.log("I am now listening on port 8888.  Sweet.")
})

app.get('/', function(req, res){
	console.log(req);
	res.send('<h1> Hello World </h1>');
});

app.get('/users', function(req,res){
	var users = db.users.find();
	res.send(users);
});

app.get('/like_photo', function(req, res){
	var likes = db.likes.find(<USER ID>);
	res.send(likes);
});