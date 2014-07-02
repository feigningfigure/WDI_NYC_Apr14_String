describe("a user", function() {

  it("should have a full name", function() {

    var user = Object.create(User);

    user.firstName = "Max";
    user.lastName = "Cantor";

    expect(user.fullName()).toEqual("Max Cantor");

  });

});
