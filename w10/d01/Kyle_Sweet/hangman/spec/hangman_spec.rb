require 'hangman'

RSpec.describe(Hangman) do

  let (:detective) { Hangman.new("detective") }
  let (:gandhi) { Hangman.new("gandhi") }
  
  # it("should exist") do
  #   expect(Hangman.new).to(be_a(Hangman))
  # end

  it ("should take a word") do
    expect(detective).to(be_a(Hangman))
  end

  it "should show progress for 'detective'" do
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'gandhi'" do
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should return 'false' for correct guess" do
    result = gandhi.guess?("x")
    expect(result).to be(false)  
  end

  it "should return 'true' for correct guess" do
    result = gandhi.guess?("a")
    expect(result).to be(true)  
  end

  it "should NOT return letters after incorrect guesses" do
    gandhi.guess?("x")
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should reveal letters after correct guesses" do 
    gandhi.guess?("a")
    expect(gandhi.progress).to eq ("_ a _ _ _ _")
  end

  it "should reveal all instances of a letter when guessed correctly" do
    detective.guess?("t")
    expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
  end

  it "should only allow 6 guesses before loss" do
    detective.guess("k")
    expect(detective.progress).to eq (nil)


end