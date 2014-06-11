// person ={
// name: "Bonzo",
// favorite_color: "taupe",
// sayHi: function () { console.log("hi! I'm + mame") ;}


// };

// console.log(person.name)
// person.sayHi();

// Syntactic sugar for javascript
function person(name) {
     this.name - name;
     this.favorite_color = "taupe";
     this.sayHi = function (){
          console.log("Hi! I'm " + this.name);
     }
}

friend = new Person("Bozo");

frined.sayHi();
