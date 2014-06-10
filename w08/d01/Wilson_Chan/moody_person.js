// var names = ["Bob", "Jack", "Sue", "Jake", "Jill"];

// console.log(people);

var person = {
  firstName: "Bob",
  age: 18,
  mood: "Happy",
  greet: function() {
    console.log("Howdy, my name is " +this.firstName + "I am " +this.age "years old and I'm " +this.mood " today.")
  }
};

var person = {
  firstName: "Jack",
  age: 18,
  mood: "Happy",
  greet: function() {
    console.log("Howdy, my name is " +this.firstName + "I am " +this.age "years old and I'm " +this.mood " today.")
  }
};

var person = {
  firstName: "Sue",
  age: 18,
  mood: "Sad",
  greet: function() {
    console.log("Howdy, my name is " +this.firstName + "I am " +this.age "years old and I'm " +this.mood " today.")
  }
};

var person = {
  firstName: "Jake",
  age: 18,
  mood: "Grateful",
  greet: function() {
    console.log("Howdy, my name is " +this.firstName + "I am " +this.age "years old and I'm " +this.mood " today.")
  }
};

var person = {
  firstName: "Jill",
  age: 18,
  mood: "Happy",
  greet: function() {
    console.log("Howdy, my name is " +this.firstName + "I am " +this.age "years old and I'm " +this.mood " today.")
  }
};

// console.log(person.greet());

// var person = new Object();

// person.firstName = "Bob";
// person.age = 18;
// person.mood = "Happy";
// person.greet = function() {
//   return "Howdy, my name is " this.firstName + "I am " this.age "years old and I'm " + this.mood + " today.";
// };




