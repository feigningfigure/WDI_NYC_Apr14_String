var express = require("express");
var app = express();
var http = require('http').Server(app);
var socketio = require("socket.io")(http);

app.use(express.static(__dirname + '/static'));

http.listen(3000, function(){
	console.log("listening on port 3000");
})

app.get('/', function(req, res){
	res.sendfile('index.html');
});

socketio.on("connection", function(socket){
		socket.on('chatSent', function(data){
		socketio.emit('chatUpdate', data)
	});
});



