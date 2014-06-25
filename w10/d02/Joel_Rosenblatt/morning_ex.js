// var lastFirst = function(namestring){
//   var splitname = namestring.split(" ").reverse();;
//   console.log(splitname.join(", "));
// }

// lastFirst("Joel Rosenblatt");

var name = "Joel Rosenblatt";
var regexLast = /(\w+)\s(\w+)/;
var lastFirst = name.replace(regexLast, "$2, $1");

console.log(lastFirst);

var name = "Eva-Lotta O'Malley";
var regexLast = /([\w-'']+)\s([\w-']+)/;
var lastFirst = name.replace(regexLast, "$2, $1");

console.log(lastFirst);
