require 'hangman'

RSpec.describe(Hangman) do 

  let(:detective) { Hangman.new(["detective"]) }
  let(:gandhi) { Hangman.new(["gandhi"]) }

  it("should take a word") do
    expect(detective).to(be_a(Hangman))
  end

  it "should be show progress" do
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'gandhi'" do
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should return false for an incorrect guess" do
    result = gandhi.guess("x")
    expect(result).to be(false)
  end

  it "should return true for a correct guess" do
    result = gandhi.guess("g")
    expect(result).to be(true)
  end

  it "should not reveal letters after incorrect guesses" do
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

  it "should keep count of the number of incorrect guesses" do
    gandhi.guess("x")
    expect(gandhi.incorrect).to eq(1)
  end

  it "should return 'nil' guesses are made after 5 incorrect guesses" do
    gandhi.guess("x")
    gandhi.guess("y")
    gandhi.guess("l")
    gandhi.guess("p")
    gandhi.guess("m")
    expect(gandhi.guess("g")).to eq(nil)
  end

  it "should return the correct answer after 5 incorrect guesses" do
    gandhi.guess("x")
    gandhi.guess("y")
    gandhi.guess("l")
    gandhi.guess("p")
    gandhi.guess("m")
    expect(gandhi.progress).to eq("gandhi")
  end

  it "should show current incorrect guesses if user makes duplicate incorrect guess" do
    gandhi.guess("x")
    gandhi.guess("x")
    expect(gandhi.incorrect).to eq(1)
  end

  it "should return the answer if player gives up" do
    expect(gandhi.giveup).to eq("gandhi")
  end

  it "should return nil if a guess is made after giving up" do
    gandhi.giveup
    expect(gandhi.guess("g")).to eq(nil)
  end

  it "should give a random word if an array is passed into the class" do
    word_array = ["gandhi", "detective", "soldier"]
    _nums = Random.new(2)
    game = Hangman.new(word_array, _nums)
    expect(game.progress).to eq( "_ _ _ _ _ _" )
  end

  # it "should show an array of incorrect guesses" do
  #   gandhi.guess("x")
  #   expect(gandhi.guesses).to eq("x")
  # end

  # it "should show a random letter when hint requested" do
  #   expect(detective.hint).to eq("t")
  # end

  # it "should reveal every instance of the letter" do
  #   expect(detective.hint).to eq("t") 
  #   expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
  # end

  # it "should count as an incorrect guess if its not the first hint" do
  #   detective.hint
  #   detective.hint
  #   expect(detective.incorrect).to eq(1)
  # end


end
