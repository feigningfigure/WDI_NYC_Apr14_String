function Person(name, age) {
    this.name = name;
    this.age = age;
}

Person.prototype.sayHello = function() {
    return "Hi I'm " + this.name + ".";
};

var jake = new Person("Jake", 22);
console.log(jake);
console.log(jake.sayHello());

console.log(Person.prototype === Object.getPrototypeOf(Person));
console.log(Person.__proto__ === Object.getPrototypeOf(Person));
console.log(Person.prototype === Object.getPrototypeOf(jake));

// var Person = {
//     "create": function(name, age) {
//         var newObj = Object.create(this);
//         newObj.name = name;
//         newObj.age = age;
//         return newObj;
//     },
//     "name": "Jimbob Henrikson",
//     "sayHello": function() {
//         return "Yo! My name be " + this.name + ".";
//     },
//     "isOlder": function(other) {
//         return this.age > other.age;
//     }
// };