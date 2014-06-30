function handle() {
  console.log(comment);
}

function setAlarm(message, timeout) {
  comment = message
  setTimeout(handle, timeout);
}

var comment = "";
setAlarm("Wake UP!", 1000);
console.log(comment)
