require 'hangman'
RSpec.describe(Hangman) do # or RSpec.describe Hangman do

  let(:detective) { Hangman.new("detective") }
  let(:gandhi) { Hangman.new("gandhi") }
  let(:word_array) { ["gandhi", "detective", "wall", "things", "stuff"] }
  let(:names) { Hangman.new(word_array)}
  let(:stuff) { Hangman.new(["stuff"])}

  it "should take a word" do
    expect(detective).to(be_a(Hangman))
  end

  it "should show progress for 'detective'" do
    expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  it "should show progress for 'gandhi'" do
    expect(gandhi.progress).to eq("_ _ _ _ _ _")
  end

  it "should return true if a letter is guessed correctly" do
    expect(detective.guess("e")).to be(true)
  end

  it "should return false if a letter is guessed incorrectly" do
    expect(detective.guess("z")).to be(false)
  end

  it "should NOT reveal letters after incorrect guesses" do
    gandhi.guess("z")
    expect(gandhi.progress()).to eq("_ _ _ _ _ _")
  end

  it "should reveal letters after correct guesses" do
    gandhi.guess("g")
    expect(gandhi.progress()).to eq("g _ _ _ _ _")
  end

  it "should reveal all instances of a letter when guessed correctly" do
    detective.guess("t")
    expect(detective.progress()).to eq("_ _ t _ _ t _ _ _")
  end

  it "should respond with nil after 5 incorrect guesses" do
    detective.guess("z")
    detective.guess("y")
    detective.guess("x")
    detective.guess("w")
    detective.guess("m")
    detective.guess("n")
    expect(detective.guess("e")).to eq(nil)
    expect(detective.guess("a")).to eq(nil)
  end

  it "should respond to progress() with the word if the game is over" do
    detective.guess("z")
    detective.guess("y")
    detective.guess("x")
    detective.guess("w")
    detective.guess("m")
    detective.guess("n")
    expect(detective.progress()).to eq("detective")
  end

  it "should congratulate you when you win" do
    gandhi.guess("g")
    gandhi.guess("a")
    gandhi.guess("n")
    gandhi.guess("d")
    gandhi.guess("h")
    expect(gandhi.guess("i")).to eq("Congratulations!")
  end

  it "should notify you if you've already won and guess again" do
    gandhi.guess("g")
    gandhi.guess("a")
    gandhi.guess("n")
    gandhi.guess("d")
    gandhi.guess("h")
    gandhi.guess("i")
    expect(gandhi.guess("z")).to eq("You've already won!")
    expect(gandhi.guess("y")).to eq("You've already won!")
    expect(gandhi.guess("g")).to eq("You've already won!")
  end

  it "should return the word if you give up" do
    expect(gandhi.giveUp()).to eq("gandhi")
  end

  it "should return nil if you've given up and guess again" do
    gandhi.giveUp()
    expect(gandhi.guess("a")).to be(nil)
    expect(gandhi.guess("x")).to be(nil)
  end

  it "should take an array" do
    expect(Hangman.new(["detective", "gandhi"])).to be_a(Hangman)
  end

  it "should randomly sample from an array" do
    word_array.should include names.giveUp()
  end

  it "should sample only from the array given" do
    names.giveUp().should_not eq "wrong"
  end

  it "should respond with the number of incorrect guesses" do
    stuff.guess("z")
    expect(stuff.incorrect()).to eq(1)
  end

  it "should notify you of your prior guesses" do
    stuff.guess("z")
    stuff.guess("f")
    expect(stuff.guesses()).to eq("z,f")
  end

  it "should return a letter that is in the word" do
    "detective".should include detective.hint()
  end

  it "should increase the counter for multiple hint requests" do
    detective.hint()
    detective.hint()
    expect(detective.incorrect).to eq(1)
  end

  it "should return a letter that hasn't been guessed" do
    detective.guess("d")
    detective.guess("e")
    detective.guess("t")
    detective.guess("c")
    "iv".should include detective.hint()
    "detc".should_not include detective.hint()
  end

end




