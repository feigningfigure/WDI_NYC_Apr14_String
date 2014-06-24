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

  it "guessed letters should see itself" do
      Hangman.@guessed_letters
  end

  it "should reveal letters after correct guesses" do
    game = Hangman.new("detective")
    gandhi.guess?("b")
    gandhi.guess?("z")
    gandhi.guess?("y")
    gandhi.guess?("e")
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _")
  end

  describe 'game_lost' do
    it 'if the player has more than 6 wrong guesses, game over' do
      game = Game.new
      detective.guess?("t")
      detective.guess?('f')
      detective.guess?('j')
      detective.guess?('j')
      detective.guess?('j')
      detective.guess?('j')
      detective.guess?('j')
      game.game_lost.should == true
    end
  end
  describe 'game_won' do
    it 'if the player guesses all of the letters corectly than the player has won' do
      game = Game.new
      gandhi.guess?('ghandhi')
      game.letter_guess('g')
      game.letter_guess('h')
      game.letter_guess('a')
      game.letter_guess('n')
      game.game_won.should == true
    end
  end

  # it "should show a function of incorrect_guesses" do
  #   detective.incorrect_guesses("guessed_letter")
  # end

end
