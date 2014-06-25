json =[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]

var name_array= [];

json.forEach (function(item){
  var print_name = item["lastname"]+", "+item["firstname"];
  name_array.push(print_name);
  console.log(print_name);
});

name_array.forEach(function(output){
  console.log(output);
});


// Printing just the name without sort
json =[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]

json.forEach (function(item){
    var print_name = item["lastname"]+", "+item["firstname"];
    console.log(print_name);
});
