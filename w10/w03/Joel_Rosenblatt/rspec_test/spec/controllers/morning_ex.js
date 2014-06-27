function setAlarm(message, timeout) {

  function handle() {
    console.log(message);
  }

  setTimeout(handle, timeout);
}
setAlarm("Wake UP!", 1000);


