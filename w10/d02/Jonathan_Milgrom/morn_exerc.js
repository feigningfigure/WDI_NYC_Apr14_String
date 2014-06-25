var regexFlip = /(\w+\W\w+)\s(\w+\W\w+)/;
var name = "Eva-Lotte O'Malley";
var newName = name.replace(regexFlip, "$2, $1");

console.log(newName);