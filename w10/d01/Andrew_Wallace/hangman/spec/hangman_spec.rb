require 'hangman'

RSpec.describe Hangman do

  let(:detective) {Hangman.new("detective")}
  let(:gandhi) {Hangman.new("gandhi")}

  it("should take word") do
    expect(detective).to(be_a(Hangman))
  end

  it  "should show progress for 'detective'" do
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'gandhi'" do
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should return true for a correct guess" do
    result = detective.guess("e")
    expect(result).to be(true)
  end

  it "should return false for an incorrect guess" do
    result = detective.guess("x")
    expect(result).to be(false)
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

  it "should tell the user they have lost if they guess incorrectly more than 5 times" do
    detective.guess("a")
    detective.guess("b")
    detective.guess("f")
    detective.guess("g")
    detective.guess("h")
    detective.guess("i")
    expect(detective.lose_status).to eq("You lost!")
  end

  it "should tell the player they have won if the number of guesses is less than or equal to 5 and the word is complete"
  it "should return the word when the game is over"
  it "should return the word if the player gives up"


end
