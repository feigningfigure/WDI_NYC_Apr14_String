
function createPerson(name, age);
    return {name: name, age: age};
}

function sayHello(person) {
    return "Yo! My name be " + person.name + ".";
}

function isOlder(personA, personB) {
    return personA.age > personB.age;
}

function PersonFactory(name, age) {
    var newObj = Object.create(Person);
    newObj.name = name;
    newObj.age = age;
    return newObj;
}
var Person = {
    "create": function(name, age) {
        var newObj = Object.create(this);
        newObj.name = name;
        newObj.age = age;
        return newObj;
    },
    "name": "Jimbob Henrikson",
    "sayHello": function() {
        return "Yo! My name be " + this.name + ".";
    },
    "isOlder": function(other) {
        return this.age > other.age;
    }
};


var NewYorker = Object.create(Person);
NewYorker.sayHello = function() { return "Go 'way"; };

console.log();
console.log(Person.name);
var rich = Object.create(Person);
console.log(rich.name);
Person.name = "Sally";
rich.name = "Richard";
console.log(Person.name);
console.log(rich.name);

rich.sayHello = function() { return "My name is " + this.name + " and I'm so cool you be trippin'."; };
console.log(rich.sayHello());

var bill = NewYorker.create("William", 30);
console.log(bill.sayHello());

var jet = Person.create("Jet", 40);
console.log(bill.isOlder(jet));

Person.sayHello = function() { return "Greetings! I'm " + this.name + "."; };
console.log(jet.sayHello());


console.log();
console.log(Person);




