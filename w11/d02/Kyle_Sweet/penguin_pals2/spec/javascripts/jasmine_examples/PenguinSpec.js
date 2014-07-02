describe("hello world", function () {
  it("should alert hello world", function () {
    expect(alert).toEqual("hello world");
  });



  describe("initialize", function() {
    it("is initialized in the the model", function () {
      expect(console.log).toEqual("A penguin has been birthed ");
  });
});

  // I dont get it - it's hosting on localhost:8888 but this is just doing absolutely nothing as the gem.

