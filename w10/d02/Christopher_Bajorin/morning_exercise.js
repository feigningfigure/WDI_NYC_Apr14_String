// "Peter Parker" regex
// flip and print to node

// // vanilla name
// var name = "Peter Parker"
// var reversedname = name.replace(/(\w+)\s(\w+)/, '$2, $1')
// console.log(reversedname)

// complicated name
// var name = "Eva-Lotte O'Malley"
var name = "Declan Van Welie"
var reversedname = name.replace(/([\w\W]+)\s([\w\W\s]+)/, '$2, $1')
// var reversedname = name.replace(/([^ ]+)\s([\w\W]+)/, '$2, $1')
console.log(reversedname)
