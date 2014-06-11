console.log("Your friends are feeling moody today. Stop by and say hi to them.");

people = [Joe, Jane, Chris, Dara, John]
moods = [disappointed, melancholic, meditative, surprised, excited]
ages = [18, 38, 50, 69, 75]

function Person(name) {
  this.name = name;
  this.age = age;
  this.mood = mood;
  this.sayHi = function(){
    console.log("Hi, my name is " + this.name + " and I am " + this.age + " years old, and I am feeling " + this.mood);
  }
}

firstPerson = new Person("Mary", "40", "melancholic");
firstPerson.sayHi();


// console.log(firstPerson.name);
// Refactor code: HTML form to enter name, to go through each value on 'people' array and randomly assign mood and age. Function where every one of them greets according to his/her mood, and shuffles every 5 seconds.

// Moody Person Object - Practice with JS Objects
// - Create an array of 5 person objects
//   - A person should have attributes including name, age, and mood
//   - A person should be able to `introduce` itself
//     - This introduction should reflect their mood
//     - For example:
//       - If the person is happy, their introduction may be
//         - 'Hi!  I am Bob!  Pleased to meet you!'
//       - If the person is unhappy, their introduction may be
//         - 'hi...  Bob here...'
//   - Note: How to implement mood is your decision.  It could be strings like 'happy' or 'unhappy' or it also could be a range of 0 to 10, where 10 is best mood ever and 0 is worst mood ever.  Your choice here


