// The following array is declared in ruby syntax.
// Translate it to javascript object syntax and execute this file
// with node so that the console.log statements output expected results.
data = {
    quizzes: [
        {
            id: 1,
            name: "What Game of Thrones character are you?",
            questions: [
                {
                    id: 1,
                    text: "What would you rather do?",
                    choices: [
                        "Drink and make merry",
                        "Have, like, a ton of honor",
                        "Be a terrible person",
                        "Swear a lot and bathe rarely"
                    ]
                },
                {
                    id: 2,
                    text: "Are you all about family events?",
                    choices: ["Yes", "No"]
                }
            ]
        }
    ]
}

// console.log(data.quizzes.length);
console.log("There are " + data.quizzes.length + " quizzes. (Should be 1.)");

console.log("The first quiz has " + data.quizzes[0].questions.length + " questions. (Should be 2.)");

var q = data.quizzes[0].questions[0];
console.log("The first quiz of the first question (\"" + q.text + "\") has " + q.choices.length + " choices. (Should be 4.)");
