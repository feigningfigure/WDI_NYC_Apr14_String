require 'hangman'


RSpec.describe(Hangman) do
  let(:detective) { Hangman.new(["detective"]) }

  # Basic check for game
  it("should take a word") do
    game = Hangman.new(["detective"])
    expect(game).to(be_a(Hangman))
  end

  # Basic check for progress
  it "should show progress" do
    game = Hangman.new(["detective"])
    expect(game.progress).to eq("_ _ _ _ _ _ _ _ _")
  end

  # Check for guess true or false
  it "should check for guesses" do
    game = Hangman.new(["detective"])
    expect(game.guess("e")).to be true
    expect(game.guess("z")).to be false
  end

  it "should output progress including guesses" do
    game = Hangman.new(["detective"])
    expect(game.guess("e"))
    expect(game.progress).to eq ("_ e _ e _ _ _ _ e")
  end

  it "shouldn't take more than 5 wrong guesses" do
    game = Hangman.new(["detective"])

    5.times do expect(game.guess("z")).to be false
    end

    expect(game.guess("z")).to eq ("Womp womp..")
    expect(game.guess("z")).to eq ("Stahp!")
  end

  it "should tell you when you have guesses everything correctly" do
    game = Hangman.new(["detective"])
    expect(game.guess("d"))
    expect(game.guess("e"))
    expect(game.guess("t"))
    expect(game.guess("c"))
    expect(game.guess("i"))
    expect(game.guess("v")).to eq ("Woot woot!")
  end

  it "progress should return word after game is done" do
    game = Hangman.new(["detective"])

    5.times do expect(game.guess("z"))
      end
    expect(game.progress).to eq ("detective")
  end

  it "should have the option to give up" do
    game = Hangman.new(["detective"])
    expect(game.giveUp).to eq ("Looser! The word was: detective")

  end

  it "should take an array and pick a random item" do
    arry = ["cookie", "blah", "bus"]
    _nums = Random.new(2)
    game = Hangman.new(arry, _nums)
    expect(game.giveUp).to eq ("Looser! The word was: cookie")

  end

  it "should tell me my guesses" do
    game = Hangman.new(["blah"])
    game.guess("z")
    expect(game.my_guesses).to eq ("z")
    game.guess("v")
    expect(game.my_guesses).to eq ("z, v")
  end


end
