// function handle() {
//   console.log(message);
// }

function setAlarm(message, timeout) {

   function handle() {
      console.log(message);
    }

setTimeout(handle, timeout);

}

setAlarm("Wake UP!", 5000);
