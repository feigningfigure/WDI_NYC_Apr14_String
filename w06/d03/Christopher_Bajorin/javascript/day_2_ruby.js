// //////// MATH FUNCTIONS //////////

// // sqrt

// function sqrt(num) {
//   if (num < 0) {
//     console.log("imaginary number");
//     var x = false;
//     return x;
//   }
//   else {
//     x = Math.sqrt(num);
//     return x;
//   }
//   return x;
// }

// // square

// function square(num) {
//   var x = num * num;
//   return x;
// }

// // string concatenate twice

// function stringTwice(string) {
//   return (string + " " + string)
// }

// //////// fastest runners /////////

// var fastestRunners = new Array("Joey Lightning", "Jimmy Molasses", "Stew \'The Tree\' Treeon");

// console.log(fastestRunners);

// fastestRunners.length;

// console.log("We just popped: " + fastestRunners.pop());

// console.log("We just shifted: " + fastestRunners.shift());

// console.log("We just unshifted: " + (function() { fastestRunners.unshift("Joey Lightning"); return "Joey Lightning"; }));

//  user prompt

// var prompt = require('prompt')
prompt.start();

prompt.get(['username', 'email'], function (err, result) {
  console.log('Command-line input received:');
  console.log('  username: ' + result.username);
  console.log('  email: ' + result.email);
});
