require 'hangman'



RSpec.describe Hangman do
     let (:detective) {Hangman.new(["detective"])}
     let (:gandhi) {Hangman.new(["gandhi"])}
#first rspec syntax
     it "should take a word" do
        expect(detective).to be_a(Hangman)
     end

     it "should show progress for 'detective'" do
     expect(detective.progress).to eq("_ _ _ _ _ _ _ _ _")
     end

     it "should show progress for 'gandhi'" do
         expect(gandhi.progress).to eq("_ _ _ _ _ _")
     end
     it "Should return false for an incorrect guess " do
               result = gandhi.guess?("x")
               expect(result).to be(false)
          end

          it "should return true for a correct guess" do
               result = gandhi.guess?("a")
               expect(result).to be(true)
          end

          it "should NOT reveal letter after incorrect guesses" do
               gandhi.guess?("x")
               expect(gandhi.progress).to eq("_ _ _ _ _ _")
               end
          it "should reveal letters after correct guesses" do
               gandhi.guess?("a")
               expect(gandhi.progress).to eq("_ a _ _ _ _")
          end

          it "should reveal All instances of a letter when guessed correctly" do
          detective.guess?("t")
          expect(detective.progress).to eq("_ _ t _ _ t _ _ _")
     end
# ______________________________________________________________________________



      it "should return false after  incorrect guess" do
        result = detective.guess?("b")
        result = detective.guess?("z")
        result = detective.guess?("y")
        expect(result).to be(false)
   end





      it "should return true after  a correct guess" do
        result = detective.guess?("e")
        expect(result).to be(true)
   end

    it "should reveal All letters  if guessed correctly" do
     detective.guess?("e")
     expect(detective.progress).to eq("_ e _ e _ _ _ _ e")

     end

  it "should return false after  incorrect guess" do
        result = detective.guess?("x")
        expect(result).to be(false)
   end
     it "should return nill after  5 incorrect guesses" do
          detective.guess?("h")
           detective.guess?("z")
           detective.guess?("w")
           detective.guess?("x")
           detective.guess?("k")
           detective.guess?("l")
        expect(detective.guess?("q")).to eq(nil)
        # the game is over, so even correct guesses are ignored
   end


    it "should return word if player gives up" do
     detective.giveUp
     expect(detective.giveUp).to eq("detective")

   end

   it "should pick detective or gandhi at random" do
     Hangman.new(["detective" , "gandhi"])
     game = Hangman.new(["detective" , "gandhi"])
     expect(game.word).to be("detective").or be("gandhi")



   end

end










