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

  it "should return nil after the fifth incorrect guess" do
    result = detective.guess?("b")
    expect(result).to be(false) 
    result = detective.guess?("z")
    expect(result).to be(false) 
    result = detective.guess?("y")
    expect(result).to be(false) 
    result = detective.guess?("h")
    expect(result).to be(false) 
    result = detective.guess?("k")
    expect(result).to be(nil)
  end

end
