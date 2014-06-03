var maxNum = 1000;


function multiples(maxNumber) {
  var multiplesArray = [];
  var x = 0;
  while (x < maxNumber) {
    if (x % 3 === 0 || x % 5 === 0) {
      multiplesArray.push(x);
      x += 1
    }
    else {
      x+= 1
    }
  }

  console.log(multiplesArray);
  y = 0
  multiplesArray.forEach(function(item) {
    y += item;
  });
  console.log(y);
}

// check for mod 3, check for mod 5, find uniquness.
