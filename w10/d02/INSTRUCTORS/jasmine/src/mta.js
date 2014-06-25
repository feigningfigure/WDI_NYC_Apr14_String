var MTA = {};

MTA.hello = function() {
    return "Greetings!";
};

MTA.budget = 10000;

MTA.getBudget = function() {
    return this.budget;
};

MTA.stops = ["Times Square", "Union Square", "29th St."];


MTA.listStops = function() {
    // 'this' technique #1, part 1: cache the context
    // var self = this;

    // the uncommented code here is a 'this' anti-pattern
    // 'this.budget' will be undefined unless we use one of the
    // techniques listed here
    this.stops.forEach(function(stop) {
        console.log("The current stop is " + stop);
        // This is buggy code. Every function has its own 'this'
        // also known as its own context
        console.log("The current budget is " + this.budget);
        // 'this' technique #1, part 2: use the cached context
        // it's important to remember that there's nothing
        // magical about the variable name 'self', it's just
        // conventional to do what we're doing
        // console.log("The current budget is " + self.budget);
    });
    // 'this' technique #2: binding to the context
    // }.bind(this));

    return true;
};

exports.MTA = MTA;
