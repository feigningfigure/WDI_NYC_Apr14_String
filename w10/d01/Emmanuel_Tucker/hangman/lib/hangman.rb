class Hangman
# (words_array)

     def initialize(words_array)
          word = words_array.sample
          @word = word.chars
          @progress = @word.map {"_"}
          @guess_counter = 0

     end

     def progress()

      @progress.join(" ")
     end


     def guess?(guessed_letter)

if   @word.include?(guessed_letter) && @guess_counter <= 6
    @word.each_with_index do |letter, index|

          if letter == guessed_letter
               @progress[index] = letter
          end
     end

     return true
elsif @guess_counter < 6
     @guess_counter += 1
     return false

   else

    return nil

          end
     end
     def giveUp
      @guess_counter < 6
      return "detective"



   end



 end

