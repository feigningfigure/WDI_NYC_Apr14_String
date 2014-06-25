require 'hangman'

RSpec.describe Hangman do

  let(:detective) { Hangman.new("detective") }
  let(:gandhi)  { Hangman.new("gandhi")}

  it "should take a word" do
    expect(detective).to be_a(Hangman)
  end

  it "should show progress" do
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'gandhi'" do
    game = Hangman.new("gandhi")
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should return false for an incorrect guess" do
    result = gandhi.guess("x")
    expect(result).to be(false)
  end

  it "should NOT reveal letters after incorrect guesses" do
    gandhi.guess("x")
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should reveal letters after correct guesses" do
    gandhi.guess("a")
    expect(gandhi.progress).to eq("_ a _ _ _ _")
  end

  it "should reveal ALL instances of a letter when guessed correctly" do
    detective.guess("t")
    expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
  end


  
end
