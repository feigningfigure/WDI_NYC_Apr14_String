require 'hangman'

RSpec.describe Hangman do

  let(:detective) { Hangman.new("detective") }
  let(:gandhi) { Hangman.new("gandhi") }




  #### Phase 1 - Basics

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






  #### "Phase 2 - End Game"

  it "If a player makes more than 5 incorrect guesses, the game is lost" do
    detective.guess?("a")
    detective.guess?("b")
    detective.guess?("f")
    detective.guess?("g")
    detective.guess?("h")
    detective.guess?("j")
    detective.guess?("k")
    expect(detective.game_status).to(eq(:lost))
  end
    
  it "If a player guesses all the letters, the game is won" do
    detective.guess?("d")
    detective.guess?("e")
    detective.guess?("t")
    detective.guess?("c")
    detective.guess?("i")
    detective.guess?("v")
    expect(detective.game_status).to(eq(:won))
  end

  it "If the game is over, `guess()` returns `nil`" do
    
    detective.instance_variable_set(:@incorrect_guess_count, 6)
    expect(detective.guess?("j")).to eq(nil)

    gandhi.instance_variable_set(:@letters_guessed, ['g','a','n','d','h','i'])
    expect(gandhi.guess?("j")).to eq(nil)
    
  end

  it "if the game is over, `progress()` returns the word" do
    detective.instance_variable_set(:@incorrect_guess_count, 6)
    expect(detective.progress).to eq("d e t e c t i v e")
  end





  ###### Phase 3 - Randomness

  it "The game is passed a word or an an **array** of words." do
    game = Hangman.new(["detective", "gandhi"])
    expect(game).to be_a(Hangman)
    game = Hangman.new("detective")
    expect(game).to be_a(Hangman)
    # expect(game.instance_variable_get.@solution_arr)to eq("d e t e c t i v e")
    # expect(game.instance_variable_get.@solution_arr)to eq("g a h n d i")
  end

  it "The game is passed a word or an an **array** of words, and picks one randomly." do
    game = Hangman.new(["detective", "gandhi"])
    expect(game).to be_a(Hangman)
    game = Hangman.new("detective")
    expect(game).to be_a(Hangman)
    # expect(game.instance_variable_get.@solution_arr)to eq("d e t e c t i v e")
    # expect(game.instance_variable_get.@solution_arr)to eq("g a h n d i")
  end






  ## Phase 4 - Edge Cases and Information

  it "The game should show all guesses so the player doesn't repeat themselves" do
    detective.guess?("a")
    detective.guess?("b")
    detective.guess?("c")
    expect(detective.guesses()).to eq("a, b, c")
  end
  
  it "The game should show how many incorrect guesses have been made" do
    detective.guess?("a")
    detective.guess?("b")
    detective.guess?("c")
    expect(detective.incorrect()).to be(1)
  end

  it "If a player guesses the same incorrect letter twice it should only count as one incorrect guess" do
    detective.guess?("a")
    detective.guess?("b")
    detective.guess?("b")
    expect(detective.incorrect()).to be(2)
    expect(detective.guesses()).to eq("a, b, b")
  end



end
