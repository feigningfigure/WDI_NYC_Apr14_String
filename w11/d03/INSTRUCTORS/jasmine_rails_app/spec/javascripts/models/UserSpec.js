describe("a user", function() {

  it("should have a full name", function() {

    var user = new User({
      firstName: "Max",
      lastName: "Cantor"
    });

    expect(user.fullName()).toEqual("Max Cantor");

  });

});
