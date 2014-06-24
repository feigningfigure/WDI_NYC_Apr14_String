require 'hangman'

RSpec.describe Hangman do

  let(:detective) { Hangman.new(["detective"]) }
  let(:gandhi) { Hangman.new(["gandhi"]) }

  it "should take a word" do
    expect(detective).to be_a(Hangman)
  end

  it "should show progress for 'detective'" do
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'gandhi'" do
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should return false for an incorrect guess" do
    result = gandhi.guess?("x")
    expect(result).to be(false)
  end

  it "should return true for a correct guess" do
    result = gandhi.guess?("a")
    expect(result).to be(true)
  end

  it "should NOT reveal letters after incorrect guesses" do
    gandhi.guess?("x")
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should reveal letters after correct guesses" do
    gandhi.guess?("a")
    expect(gandhi.progress).to eq("_ a _ _ _ _")
  end

  it "should reveal ALL instances of a letter when guessed correctly" do
    detective.guess?("t")
    expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
  end

  it "should NOT reveal letters after incorrect guesses" do
    detective.guess?("b")
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should NOT reveal letters after incorrect guesses" do
    detective.guess?("z")
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should NOT reveal letters after incorrect guesses" do
    detective.guess?("y")
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

it "should reveal ALL instances of a letter when guessed correctly" do
    detective.guess?("e")
    expect(detective.progress).to eq("_ e _ e _ _ _ _ e")
  end

it "should show progress for 'detective'" do
    detective.guess?("t")
    detective.guess?("e")
    expect(detective.progress).to eq("_ e t e _ t _ _ e")
  end

it "should NOT reveal letters after incorrect guesses" do
    detective.guess?("h")
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should end the game after five incorrect guesses" do
    detective.guess?("h")
    detective.guess?("z")
    detective.guess?("a")
    detective.guess?("q")
    detective.guess?("y")
    expect(detective.guess?("d")).to eq(nil)
  end

  it "should end the game because player gave up" do
    expect(detective.giveup).to eq("detective")
  end

  it "should return nil for a guess after giving up" do
    detective.giveup
    expect(detective.guess?("d")).to eq(nil)
  end

  it "should provide a random word" do
    word_array = ["gandhi", "detective", "jimmy"]
    _nums = Random.new(3)
    game = Hangman.new(word_array, _nums)
    expect(game.progress).to eq ("_ _ _ _ _")
  end

  it "should return a new game" do
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should return false for an incorrect guess" do
    result = detective.guess?("z")
    expect(result).to be(false)
  end  

it "should return true for a correct guess" do
    result = detective.guess?("d")
    expect(result).to be(true)
  end  

  it "should show incorrect guess" do
    detective.guess?("z")
    expect(detective.guesses).to eq(1)
  end
end
