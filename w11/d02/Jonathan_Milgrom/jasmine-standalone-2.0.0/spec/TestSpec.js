describe("Hangman", function() {
	console.log("Hello");

  var game;

  beforeEach(function() {
  	console.log(Hangman);
    game = Hangman;
  });

  it("should be able to initialize a game", function() {
    game.initialize("detective");
    expect(game.word).toEqual("detective");
  });

});