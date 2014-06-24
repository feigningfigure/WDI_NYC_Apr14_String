require 'hangman'
RSpec.describe Hangman do

  let(:detective) {Hangman.new(["detective"])}
  let(:gandhi) {Hangman.new(["gandhi"])}
  let(:word_array) {["detective", "gandhi"]}

  it("should take a word") do
    expect(detective).to(be_a(Hangman))
  end

  it "should show progress for detective" do
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'gandhi'" do
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should return false for an incorrect guess" do
    result = gandhi.guess("x")
    expect(result).to be(false)
  end

  it "should return true for a correct guess" do
    result = gandhi.guess("a")
    expect(result).to be(true)
  end

  it "should not reveal letters after incorrect guesses" do
    gandhi.guess("x")
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should reveal letters after correct guesses" do
    gandhi.guess("a")
    expect(gandhi.progress).to eq("_ a _ _ _ _")
  end

   it "should reveal all instances of a letter when guessed correctly" do
    detective.guess("t")
    expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
  end

  it "should end the game if player makes 5 or more incorrect guesses" do
    gandhi.guess("x")
    gandhi.guess("v")
    gandhi.guess("w")
    gandhi.guess("q")
    gandhi.guess("z")
    expect(gandhi.guess("a")).to eq(nil)
  end

  it "should not reveal correct letters after the game is finished" do
  gandhi.guess("x")
  gandhi.guess("v")
  gandhi.guess("w")
  gandhi.guess("q")
  gandhi.guess("z")
  gandhi.guess("a")
  expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should alert the player that they have won the game if all letters have been guessed correctly" do
    gandhi.guess("g")
    gandhi.guess("a")
    gandhi.guess("n")
    gandhi.guess("d")
    gandhi.guess("h")
    expect(gandhi.guess("i")).to eq("WINNER WINNER CHICKEN DINNER!")
  end

  it "should reveal the entire word after a player has won the game" do
    gandhi.guess("g")
    gandhi.guess("a")
    gandhi.guess("n")
    gandhi.guess("d")
    gandhi.guess("h")
    gandhi.guess("i")
    expect(gandhi.progress).to eq("gandhi")
  end

  it "should reveal the entire word if the player gives up" do
    gandhi.guess("g")
    expect(gandhi.give_up).to eq("gandhi")
  end

  it "should ignore guesses after the player gives up" do
    gandhi.guess("g")
    gandhi.give_up
    expect(gandhi.guess("d")).to eq(nil)
  end

  it "should pick a word randomly from word array" do
    expect(word_array).to include(Hangman.new(word_array).word.join(""))
  end

  it "should show all guesses so that player does not repeat themselves" do
    gandhi.guess("x")
    gandhi.guess("j")
    gandhi.guess("a")
    expect(gandhi.guesses).to eq("current guesses: x, j, a")
  end

  it "should ensure that if a player guesses the same incorrect letter twice it should only count as one incorrect guess" do
    gandhi.guess("x")
    gandhi.guess("x")
    expect(gandhi.incorrect_guesses).to eq(1)
  end

end