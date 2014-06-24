require 'hangman'

RSpec.describe(Hangman) do

  # let = before each instance pass this is
  let(:detective) { Hangman.new("detective")}
  let(:gandhi) { Hangman.new("gandhi")}

  it("should exist")do
  expect(Hangman.new("word")).to(be_a(Hangman))
end

it "should take a word" do
  game = Hangman.new("detective")
  expect(game).to be_a(Hangman)
end

it "should show progress for 'detective'" do
  expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
end

it "should show progress for 'gandhi'" do
  expect(gandhi.progress).to eq("_ _ _ _ _ _")
end

it "should show 'z' as a false letter for 'detective'" do
  expect(detective.guess('z')).to eq(false)
end

it "should show 'g' as a true letter for 'gandhi'" do
  result = gandhi.guess('g')
  expect(result).to eq(true)
end

it "should not reveal letters after incorrect guesses" do
  gandhi.guess("x")
  expect(gandhi.progress).to eq("_ _ _ _ _ _")
end

it "should reveal letters after correct guesses" do
  detective.guess("t")
  expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
end

it "should not allow more guesses after 5 incorrect guesses" do
  gandhi.guess("x")
  gandhi.guess("l")
  gandhi.guess("y")
  gandhi.guess("t")
  gandhi.guess("z")
  sixth_guess = gandhi.guess("g")
  expect(sixth_guess).to eq nil
end

it "should return answer after more than 5 incorrect guesses" do
  gandhi.guess("x")
  gandhi.guess("l")
  gandhi.guess("y")
  gandhi.guess("t")
  gandhi.guess("z")
  gandhi.guess("g")
  expect(gandhi.progress).to eq "gandhi"
end

it "should return answer if player gives up" do
  gandhi.giveUp
  expect(gandhi.progress).to eq("gandhi")
end

it "should return incorrect guesses unless game is over" do
  gandhi.guess('x')
  gandhi.guess('l')
  gandhi.guess('y')
  expect(gandhi.incorrect_guesses).to eq("Incorrect guesses: x,l,y")
end

it "should create a game from random word when presented with array of words" do
  expect(Hangman.new(["detective","gandhi"])).to be_a(Hangman)
end

it "should not allow a player to make the same wrong guess twice" do
  gandhi.guess("x")
  expect(gandhi.guess("x")).to eq("You made that guess already. Guess again.")
end

it "should display guessed letters when prompted" do
  gandhi.guess("g")
  gandhi.guess("x")
  expect(gandhi.guesses).to eq(["g","x"])
  end

# it "should return a new random letter when someone asks for a hint" do
#   gandhi.guess('g')
#   gandhi.guess('a')
#   gandhi.guess('n')
#   gandhi.guess('d')
#   gandhi.guess('h')
#   expect(gandhi.hint).to eq("i")
#   end

it "should auto-guess a new random letter when someone asks for a hint" do
  gandhi.guess('g')
  gandhi.guess('a')
  gandhi.guess('n')
  gandhi.guess('d')
  gandhi.guess('h')
  gandhi.hint
  expect(gandhi.guess("i")).to eq("You made that guess already. Guess again.")
  end

end