var express = require('express');

var app = express();

// app.get('/', function(req, res) {
//   res.send("hello");
// });

app.use(express.static(__dirname + '/static'));
// use a module called express static which takes an argument which is a directory


app.listen(8000);
