var person = createPerson("Bob", "18", "happy"),
    person2 = createPerson("Jack", "20", "grumpy"),
    person3 = createPerson("Sue", "30", "giddy"),
    person4 = createPerson("Jake", "40", "confused")
    person5 = createPerson("Jill", "25", "sad");

function createPerson(firstName, age, mood) {
  return {
    firstName : firstName,
    age : age,
    mood: mood,
    description : function() {
      return "Hello, my name is " + this.firstName + ", I am " + this.age + ", and I'm feeling " + this.mood + " today."
    },
  };
}



console.log(person.description());
console.log(person2.description());
console.log(person3.description());
console.log(person4.description());
console.log(person5.description());


