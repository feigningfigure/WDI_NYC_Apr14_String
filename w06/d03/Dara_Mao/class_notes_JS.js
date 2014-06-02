var my_array = [
    "playtypus",
    "ptersdy",
    "dragon"
];

for (var i = 0; i < my_array.length, i++){
  var item = my_array[i];
  console.log(item);
}

my_array.forEach(function(item){
  console.log(item);
});


var viewFantasticCreature = function (item) {
  console.log("wow!");
};

my_array.forEach(viewFantasticCreature)
