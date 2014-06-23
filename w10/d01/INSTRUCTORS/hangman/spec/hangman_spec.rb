require 'hangman'

RSpec.describe Hangman do

  it "should take a word" do
    game = Hangman.new("detective")
    expect(game).to be_a(Hangman)
  end

  it "should show progress for 'detective'" do
    game = Hangman.new("detective")
    expect(game.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'gandhi'" do
    game = Hangman.new("gandhi")
    expect(game.progress).to eq("_ _ _ _ _ _")
  end

end
