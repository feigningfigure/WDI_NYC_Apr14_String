require 'hangman'

# RSpec.describe Hangman do

#   # it("should exist") do
#   #   expect(Hangman.new).to(be_a(Hangman))
#   #   end

# ##below is non-poetry syntax example
#   # it("should take a word")do
#   #   game = Hangman.new("detective")
#   #   expect(game).to(be_a(Hangman))
#   # end

# ##below is poetry syntax example
#   # it "should show progress" do
#   #   game = Hangman.new("detective")
#   #   expect(game.progress).to eq("_________")
#   # end

#   # it "should show progress for 'detective'" do
#   #   game = Hangman.new("detective")
#   #   expect(game.progress).to eq("_ _ _ _ _ _ _ _ _")
#   # end

#   # it "should show progress for 'gandhi
# '" do
#   #   game = Hangman.new("gandhi
# ")
#   #   expect(game.progress).to eq("_ _ _ _ _ _")
#   # end

# ##my attempt below
#   # it "should reveal a correctly guessed letter" do
#   #     game = Hangman.new("gandhi
# ")
#   #     expect(game.guess("g")).to eq("g _ _ _ _ _")
#   #   end

# #     it "should return false for an incorrect guess" do
# #       game = Hangman.new("gandhi
# ")
# #       result = game.guess("x")
# #       expect(result).to be(false)
# #     end

# #     it "should erturn true for a correct guess" do
# #       game = Hangman.new("gandhi
# ")
# #       result = game.guess("a")
# #       expect(result).to be(true)
# #     end

# # end

RSpec.describe Hangman do

  let(:detective) { Hangman.new("detective") }
  let(:gandhi) { Hangman.new("gandhi") }

  it "should take a word" do
    expect(detective).to be_a(Hangman)
  end

  it "should initialize words with a zero counter" do
    expect(detective.game_counter).to be(0)
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

  it "should add +1 to counter after every false guess" do
    gandhi.guess?("x")
    expect(gandhi.game_counter).to eq(1)
  end

  it "should end game after five incorrect guesses" do
    gandhi.guess?("x")
    gandhi.guess?("l")
    gandhi.guess?("j")
    gandhi.guess?("k")
    gandhi.guess?("p")
    expect(gandhi.game_counter).to eq("game over")
  end

  it "should only return guesses if counter is greater than 5" do
    gandhi.guess?("x")
    gandhi.guess?("l")
    gandhi.guess?("j")
    gandhi.guess?("k")
    gandhi.guess?("p")
    expect(gandhi.guess?("q")).to eq("GAME OVER")
  end

  it "should acknowledge a win if player guesses all letters" do
    gandhi.guess?("a")
    gandhi.guess?("g")
    gandhi.guess?("n")
    gandhi.guess?("d")
    gandhi.guess?("h")
    gandhi.guess?("i")
    # expect(gandhi.progress).to eq("g a n d h i")
    expect(gandhi.guess?("i")).to eq("Won!!")
  end

  it "should return the full word when a player gives up" do
    expect(gandhi.giveUp).to eq("gandhi")
    expect(gandhi.guess?("q")).to eq("GAME OVER")

  end

  it "should return the number of guesses made after each guess" do
    gandhi.guess?("x").to eq("1 guesses made")
  end

end
