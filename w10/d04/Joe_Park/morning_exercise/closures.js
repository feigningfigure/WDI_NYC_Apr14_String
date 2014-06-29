// Closures are functions that refer to independent (free) variables. 

// In other words, the function defined in the closure 'remembers' the environment in which it was created.

// function init(){
//   var name = "Mozilla"
//   function displayName(){
//     console.log(name);
//   }
//   displayName();
// }


// init();




function setAlarm(message, timeout) {
  function handle() {
    console.log(message);
  }
  setTimeout(handle, timeout);
}
setAlarm("Wake UP!", 1000);