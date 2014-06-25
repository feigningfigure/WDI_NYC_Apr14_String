// to run these specs:
// npm install jasmine-node
// alias jasmine='node_modules/jasmine-node/bin/jasmine-node'
// jasmine spec

var jas = require('jasmine-node');

var mta_object = require('../src/mta.js');

var MTA = mta_object.MTA;

describe("MTA", function() {

    it("should say hello", function() {
        expect(MTA.hello()).toEqual("Greetings!");
    });

    it("should show the budget", function() {
        expect(MTA.getBudget()).toEqual(10000);
    });

    it("should list stops", function() {
        expect(MTA.listStops()).toEqual(true);
    });

});
