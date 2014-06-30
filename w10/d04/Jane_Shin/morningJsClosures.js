// var message = "9:52 AM"

// function handle() {
//   console.log(message);
// }
// function setAlarm(message, timeout) {
//   setTimeout(handle, timeout);
// }


function setAlarm(message, timeout) {
  setTimeout(handle, timeout);

  function handle() {
  console.log(message);
	}
}


setAlarm("Wake UP!", 1000);

