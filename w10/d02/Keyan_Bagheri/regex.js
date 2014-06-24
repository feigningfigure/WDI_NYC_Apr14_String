var regexFlip = /([\w-']+)\s([\w-']+)/;
var name = "Eva-Lotta O'Malley";
var newName = name.replace(regexFlip, "$2, $1");
console.log(newName);