var json = '[{"firstname":"Robert","lastname":"Zimmerman","phone":"555-0100"}, {"firstname":"Sarah","lastname":"Jones","phone": "555-0100"}, {"firstname":"Jim","lastname":"Adler","phone":"555-0100"}, {"firstname":"Becky","lastname":"Smith","phone":"555-0100"}]'

var myhash = JSON.parse(json);
for(var i in myhash){
 var firstname = myhash[i].firstname;
 var lastname = myhash[i].lastname;
 console.log(lastname + ", " + firstname)
}
