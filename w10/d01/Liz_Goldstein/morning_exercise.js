for(var attributename in myobject){
    console.log(attributename+": "+myobject[attributename]);
}

[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]

test = [{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]

i = 0
while (i < test.length){
  console.log(test[i]["lastname"] + ", " + test[i]["firstname"]);
  i++
}

i = 0
while (i < test.length){
  names = []
  names.push(test[i]["lastname"] + ", " + test[i]["firstname"]);
  i++
  console.log(names)
  console.log(names.sort());
  return names;
}

console.log(names.sort());
