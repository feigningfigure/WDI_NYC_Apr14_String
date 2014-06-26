var string = "this that";

var string2 = string.replace(/\s/, "-");

var truthy = (string == string2) ? true : false;

console.log(truthy);
