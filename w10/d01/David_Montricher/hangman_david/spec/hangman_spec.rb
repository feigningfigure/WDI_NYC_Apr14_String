require 'hangman'

Rspec.describe Hangman do

  let(:detective) {Hangman.new("detective")}
  let(:ghandi) {Hangman.new("ghandi")}

  it "should take a word" do
    # game = Hangman.new("detective")
    expect(detective).to be_a(Hangman)
  end

  it "should show progress for 'detective'" do
    # game = Hangman.new("detective")
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'ghandi'" do
    # game = Hangman.new("ghandi")
    expect(ghandi.progress).to eq("_ _ _ _ _ _")
  end

  it "should return false for an incorrect guess" do
    # game = Hangman.new("ghandi")
    result = ghandi.guess("x")
    expect(result).to be(false)
  end

  it "should return true for a correct guess" do
    # game = Hangman.new("detective")
    result = ghandi.guess("a")
    expect(result).to be(true)
  end

  it "should return true for a correct guess" do
    result = ghandi.guess("a")
    expect(result).to be(true)
  end

  it "should NOT reveal letters after incorrect guesses" do
    ghandi.guess("x")
    expect(ghandi.progress).to eq("_ _ _ _ _ _")
  end



end
