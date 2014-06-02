
function printer(string) {
	var delay = Math.random() + 4000;
	setTimeout(function() { console.log(string)}, delay);
}

printer("Herro");

function continousPrinter(string) {
	var interval = Math.random() + 4000;
	setInterval(function() {console.log(string)}, delay)
}

