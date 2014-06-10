// var names = ["Bob", "Jack", "Sue", "Jake", "Jill"];

// console.log(people);

var person = {
  firstName : "Bob",
  age : 18,
  mood : "Happy",
  greet : function() {
    return "Howdy, my name is " this.firstName + "I am " this.age "years old and I'm " + this.mood + " today.";
  }
};

console.log(person.greet());

// var person = new Object();

// person.firstName = "Bob";
// person.age = 18;
// person.mood = "Happy";
// person.greet = function() {
//   return "Howdy, my name is " this.firstName + "I am " this.age "years old and I'm " + this.mood + " today.";
// };




