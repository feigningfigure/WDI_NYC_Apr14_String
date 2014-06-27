// GLOBAL vs LOCAL
var name = "Global";

function showName(){
  var name = "Local"
  console.log(name);   // Local
}
console.log(name);  // Global
showName();  // Local

// LOCAL HAS ACCESS TO GLOBAL

var name = "Global";

function showName(){
  console.log(name);   // Global
} 
showName();  // Global


// 
var name = "Global";

function showGlobalName(){
  console.log(name);  
}

function isThisGlobal(){
  name = "Am I Really Local?";
  console.log(name);  
}

function reallyLocalName(){
  var name = "Local";
  console.log(name);
}


showGlobalName();  //  Global
isThisLocal();  //  "Am I Really Local?"
showGlobalName();  //  "Am I Really Local?"
reallyLocalName();  //  "Local"
