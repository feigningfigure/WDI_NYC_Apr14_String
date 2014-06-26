var jas = require('jasmine-node');

var mta_object = require('../src/mta.js');

var MTA = mta_object.MTA;

// describe ("MTA", function () {
//   it("should say hello", function() {
//     expect(MTA.hello()).toEqual("Greetings!")
//   });
// });

var $n_line = {"Times Square": 0, "34th St": 1, "28th St N-line": 2, "23rd St N": 3, "Union Square": 4; "8th St N": 5};

var $l_line = {"8th Ave": 0, "6th Ave": 1, "Union Square": 2, "3rd Ave": 3, "Union Square": 4, "1st Ave": 5};

var $six_line = {"Grand Central": 0, "28th on the 6-line": 1, "23rd on the 6-line": 2, "Union Square" 3, "Astor Place": 4};

function chompStop() {
  console.log("What stop are you on?");
      var currentStop = gets.chomp;
      console.log("You entered: #{currentStop}";
  };



var array_keys = new Array();
var array_values = new Array();

for (var key in a) {
    array_keys.push(key);
    array_values.push(a[key]);
}

alert(array_keys);
alert(array_values);

