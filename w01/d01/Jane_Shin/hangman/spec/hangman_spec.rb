require 'hangman'

RSpec.describe Hangman do

	let(:detective) {Hangman.new(["detective", "detective"])}
	let(:gandhi) {Hangman.new(["gandhi"])}


	# it("should should take a word") do
	# 	expect(detective).to(be_a(Hangman))
	# end

	it("should should take an array and select one random word") do
		expect(detective).to(be_a(Hangman))
	end

# poetry mode syntax doesn't have as many "()"
	it "should show progress for 'detective'" do
		expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
	end

	it "should show progress for 'gandhi'" do
		expect(gandhi.progress).to eq("_ _ _ _ _ _")
	end

	it "should return false for an incorrect guess" do
		result = gandhi.guess("x")
		expect(result).to be(false)
	end

	it "should return true for an correct guess" do
		result = gandhi.guess("a")
		expect(result).to be(true)
	end

	it "should reveal letters after correct guesses" do
		gandhi.guess("a")
		expect(gandhi.progress).to eq("_ a _ _ _ _")
	end

	it "should not reveal letters after incorrect guesses" do
		gandhi.guess("x")
		expect(gandhi.progress).to eq("_ _ _ _ _ _")
	end

	it "should reveal ALL instances of a letter when guessed correct" do
		detective.guess("t")
		expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
	end

	it "should not accept more guesses after 5 incorrect guesses" do
		detective.guess("q")
		detective.guess("w")
		detective.guess("r")
		detective.guess("o")
		detective.guess("p")
		expect(detective.guess("d")).to eq(nil)
	end

	it "should reveal the word after the game is lost" do
		detective.guess("q")
		detective.guess("w")
		detective.guess("r")
		detective.guess("o")
		detective.guess("p")
		expect(detective.progress).to eq("detective")		
	end

	it "should be able to end game when player gives up" do
		expect(gandhi.give_up).to eq("gandhi")
		expect(gandhi.guess("g")).to eq(nil)
	end

	it "should show how many incorrect guesses have been made" do
		gandhi.guess("t")
		expect(gandhi.incorrect).to eq(1)
	end

	it "should show all the guessed letters in the game" do
		gandhi.guess("t")
		gandhi.guess("c")
		expect(gandhi.guesses).to eq(["t", "c"])		
	end

	it "should give the first hint as a freebie" do
		detective.guess("d")
		detective.guess("e")
		detective.guess("c")
		detective.guess("t")
		detective.guess("i")
expect(detective.progress).to eq("d e t e c t i _ e")	
		# hardcode hint_letter = "e"
		# detective.instance_variable_set(:@hint_letter, "e")
# expect(detective.hint).to eq("d").or eq("e").or eq("t").or eq("c").or eq("i").or eq("v")
expect(["d", "e", "t", "c", "i", "v"]).to include(detective.hint)
		# expect(detective.hint).to eq("v")
		expect(detective.incorrect).to eq(0)
		expect(detective.progress).to eq("d e t e c t i v e")
	end

	it "should dock hints as incorrect guesses after the freebie" do
		detective.hint
		detective.hint
		expect(detective.incorrect).to eq(1)
	end


end