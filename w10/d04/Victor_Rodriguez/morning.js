//function handle(){
//  console.log(message);
//}

//function setAlarm(message, timeout) {
//  setTimeout(handle, timeout);
//}

//setAlarm("Wake UP!", 1000);

//SOLUTION

function setAlarm(message, timeout){
  function handle(){
  console.log(message);
}
  setTimeout(handle, timeout);
}

setAlarm("Wake UP!", 1000);
