

function threes(num) {
  var threes = [];
  i = 1;
 while(i < num){
  if(i % 3 === 0)
  {threes.push(i);}
 i++;
}
return threes;
}

function fives(num) {
  var fives = [];
  i = 1;
 while(i < num){
  if(i % 3 === 0)
  {fives.push(i);}
 i++;
}
return fives;
}

var a = threes(1000).reduce(
           function(prev,current){
             return  +(current[1]) + prev;
           }, 0
         );

var b = fives(1000).reduce(
           function(prev,current){
             return  +(current[1]) + prev;
           }, 0
         );

console.log(a + b)
