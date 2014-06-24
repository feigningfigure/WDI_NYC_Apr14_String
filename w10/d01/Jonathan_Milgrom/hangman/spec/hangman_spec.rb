require 'hangman'

# RSpec.describe Hangman do
# 	it ""
# end

RSpec.describe(Hangman) do

	#let says before each of these examples, spin this up
	let(:detective) {Hangman.new("detective")}
	let(:gandhi) {Hangman.new("gandhi")}
	let(:rando) {Hangman.new(["Dave", "Edward", "Sheep"])}

	array = ["Dave", "Edward", "Sheep"]

	it("should take a word") do
		expect(detective).to(be_a(Hangman))
	end

	it "should show progress for 'detective'" do 
		expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
	end

	it "should show progress for 'gandhi'" do 
		expect(gandhi.progress).to eq("_ _ _ _ _ _")
	end

	it "should show 'true' for correct guess" do
		expect(gandhi.guess("g")).to be(true)
	end

	it "should show 'false' for incorrect guess" do
		expect(gandhi.guess("z")).to be(false)
	end

	it "should NOT reveal letters after incorrect guesses" do
		gandhi.guess("x")
		expect(gandhi.progress).to eq("_ _ _ _ _ _")
	end

	it "should reveal letters after correct guesses" do
		gandhi.guess("a")
		expect(gandhi.progress).to eq("_ a _ _ _ _")		
	end

	it "should reveal all letters after correct guesses" do
		detective.guess("t")
		expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
	end

	it "should reveal all letters after correct guesses" do
		detective.guess("t")
		detective.guess("e")
		expect(detective.progress).to eq("_ e t e _ t _ _ e")
	end

	it "should return nil for an incorrect guess after 5 incorrect guesses" do
		5.times { detective.guess("z") }
		expect(detective.guess("k")).to eq(nil)
	end

	it "should return nil for an incorrect guess after 5 incorrect guesses" do
		5.times { detective.guess("z") }
		expect(detective.guess("c")).to eq(nil)
	end

	it "should not return nil after 5 correct guesses" do 
		5.times { detective.guess("t") }
		expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
	end

	it "should reveal the whole word after 6 incorrect guesses" do
		6.times { detective.guess("z") }
		expect(detective.progress).to eq("detective")
	end

	it "should allow a player to give up" do
		expect(detective.giveup).to eq("detective")
		expect(detective.guess("t")).to eq(nil)
		expect(detective.guess("k")).to eq(nil)
	end

	it "should accept an array of words" do
		expect(rando).to be_a(Hangman)
	end

	it "should select a random word out of an array of words" do 
		num = Random.new(2)
		expect(rando.giveup).to eq(array[num.rand(0..array.length).floor])
	end

	it "should show all guesses" do
		expect(detective.guess("t"))
		expect(detective.guess("k"))
		expect(detective.guesses).to eq(["t", "k"])
	end

	it "should show number of incorrect guesses" do
		expect(detective.guess("t"))
		expect(detective.guess("k"))
		expect(detective.incorrect).to eq(1)
	end

	it "should give you a hint" do
		num = Random.new(2)
		expect(detective.hint).to eq()
	end

	# it "should show have a progess method that includes correct guesses" do
	# 	game = Hangman.new("gandhi")
	# 	game.guess("g")
	# end
end