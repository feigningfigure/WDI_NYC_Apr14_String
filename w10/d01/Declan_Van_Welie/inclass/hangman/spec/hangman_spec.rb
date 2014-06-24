require 'hangman'

RSpec.describe Hangman do

  let(:detective) { Hangman.new("detective") }
  let(:gandhi) { Hangman.new("gandhi") }

  it "should take a word" do
    expect(detective).to be_a(Hangman)
  end

  it "should show progress for 'detective'" do
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'gandhi'" do
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should return true if the guess matches one of the word's letters" do
    expect(gandhi.guess("a")).to eq(true)
  end

  it "should return false if the guess doesn't match one of the word's letters" do
    expect(gandhi.guess("p")).to eq(false)
  end

  it "should not reveal letters for incorrect guesses" do
    gandhi.guess("x")
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should reveal letters after correct guesses" do
    gandhi.guess("a")
    expect(gandhi.progress).to eq("_ a _ _ _ _")
  end

  it "should reveal all instances of a letter when guessed correclty" do
    detective.guess("t")
    detective.guess("e")
    expect(detective.progress).to eq("_ e t e _ t _ _ e")
  end

  it "should continue the game with more than one incorrect guess" do
    detective.guess("q")
    detective.guess("x")
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end


    it "should return nil after more than 5 incorrect guesses" do
    detective.guess("q")
    detective.guess("x")
    detective.guess("m")
    detective.guess("w")
    detective.guess("z")
    detective.guess("n")
    expect(detective.progress).to eq("detective")
    expect(detective.guess("b")).to eq(nil)
  end

    it "should return the answer after more than 5 incorrect guesses" do
    detective.guess("q")
    detective.guess("x")
    detective.guess("m")
    detective.guess("w")
    detective.guess("z")
    detective.guess("n")
    expect(detective.progress).to eq("detective")
    expect(detective.guess("b")).to eq(nil)
  end

  it "should return the word and return nil for guesses if a player quits" do
  expect(detective.give_up()).to eq("detective")
  expect(detective.guess("d")).to eq(nil)
  end

  it "should return one of the two randomly selected words" do
    game = Hangman.new(["detective", "gandhi"])
    expect(game.give_up()).to eq("detective" || "gandhi")
  end

it "should show all guesses" do
  detective.guess("t")
  detective.guess("e")
  expect(detective.guesses()).to eq("t, e")
end

it "should count the same incorrect guess only once" do
  detective.guess("t")
  detective.guess("e")
  detective.guess("e")
  expect(detective.guesses()).to eq("t, e")
  expect(detective.progress()).to eq("_ e t e _ t _ _ e")
  expect(detective.guess_counter()).to eq(2)
end

it "should show the number of incorrect guesses" do
  detective.guess("t")
  detective.guess("z")
  detective.guess("q")
  expect(detective.incorrect()).to eq(2)
  end

it "when a user asks for a hint, it should reveal a letter from the word" do
  detective.hint()
  detective.hint()
  expect(detective.hint()).not_to eq("")
  expect(detective.guess_counter()).to eq(2)
  expect(detective.incorrect()).to eq(2)
  expect(detective.progress()).not_to eq("_ _ _ _ _ _ _ _ _")
  end

end

