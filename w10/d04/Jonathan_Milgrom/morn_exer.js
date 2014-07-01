function handle() { console.log(message); } 

function setAlarm(message, timeout) { 
	
	return setTimeout(console.log(message), timeout); 
} 

setAlarm("Wake UP!", 1000);