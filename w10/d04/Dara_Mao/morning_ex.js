function init() {
    var name = "dara"; // name is a local variable created by init
    function displayName() { // displayName() is the inner function, a closure
        console.log(name); // displayName() uses variable declared in the parent function
    }
    displayName();
}
init();



function setAlarm(message, timeout) {
    function handle() {
        console.log(message);
    }
    setTimeout(handle, timeout);
}

setAlarm("Wake UP!", 1000);
