// Rewrite the following code, using what you know about closures, so that it works.

function handle() {
  console.log(message);
}

function setAlarm(message, timeout) {
  setTimeout(handle, timeout);
}
setAlarm("Wake UP!", 1000);
