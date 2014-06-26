var jsonText = [{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}];

jsonText.sort(function(a, b){
  return a.lastname > b.lastname;
});

function printNames(){
  for(var x in jsonText){
    console.log(jsonText[x].lastname + ", " + jsonText[x].firstname);
  }
}

printNames();

