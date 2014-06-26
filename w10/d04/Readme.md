###Week10-Day04

#WORK IN YOUR OWN FOLDER ONLY!

---

## Morning Exercise


### JS Closures

#### Uh Oh -- the following code doesn't work!

`Rewrite the following code, using what you know about closures, so that it works.`

function handle() {
	console.log(message);
}
function setAlarm(message, timeout) {
	setTimeout(handle, timeout);
}

setAlarm("Wake UP!", 1000);
