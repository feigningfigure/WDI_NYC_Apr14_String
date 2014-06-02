var multiples = new Array();

for (var x = 0; x < 1000; x++) {
    if (x % 3 === 0){
      multiples.push(x);
    }
    else {
      null;
    }
}

var result = 0;
for (var i = 0; i< multiples.length; i++) {
result += multiples[i];
}
