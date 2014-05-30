//////// MATH FUNCTIONS //////////

// sqrt

function sqrt(num) {
  if (num < 0) {
    console.log("imaginary number");
    var x = false
    return x
  }
  else {
    x = Math.sqrt(num)
    return x
  }
  return x
}

// square

function square(num) {
  var x = num * num
  return x
}

// string concatenate twice

function stringTwice(string) {
  return (string + " " + string)

}

