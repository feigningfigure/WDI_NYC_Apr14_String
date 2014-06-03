// TIMERS

// PART A -- Write a function in JS that uses a timer and takes a string as a parameter. This function should console.log that string after a random amount of time. (Timer ends up being inside the function)
// PART B -- Write a function in JS that uses a timer and takes a string as a parameter. This function should continuously console.log that string after a random amount of time. Be sure to include a way to end the continuous console.log

// Lab Part A - Chris Lee solution

function printString(string){
  var delay = Math.random()*4000;
  setTimeout(function(){ console.log(string) }, delay);
}

// Lab Part B - By Joel

function visualPacemaker(string)





function dollarsToPounds(amount, select_from, select_to) {
  var select_to =
  var select_from =
  var result

  if (select_to.value === "pounds" && select_from.value === "dollars") {
      result.value = (amount * 0.5973).toFixed(2);
  }
  if (select_to.value === "dollars" && select_from.value === "pounds") {
      result.value = (amount * 1.6746).toFixed(2);
  }
  console.log("Amount converted: " + result)
}
