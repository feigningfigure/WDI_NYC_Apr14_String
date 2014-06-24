class Hangman
  attr_accessor :word, :incorrect_guesses, :guesses, :correct_guesses

  def initialize(word_array)
    @word = word_array.sample.split("")
    @progress = @word.map {"_"}
    @incorrect_guesses = 0
    @give_up = false;
    @total_guesses = []
    @correct_guesses = []
  end

  def progress()
    # @word.split("").map { "_" }.join(" ")
    if @progress.include?("_") == false
      return @word.join("")
    else
      @progress.join(" ")
    end
  end

  def guess(guessed_letter)
    while @progress.include?("_")
      if @incorrect_guesses >= 5
        "GAME OVER!"
        return nil
      elsif @give_up == true
        "GAME OVER!"
        return nil
      elsif @word.include? (guessed_letter)
        @correct_guesses << guessed_letter
        @word.each_with_index do |letter, index|
          if letter == guessed_letter
            @progress[index] = letter
          end
        end
          if @progress.include?("_") == false
            return "WINNER WINNER CHICKEN DINNER!"
          end
        @total_guesses << guessed_letter
        return true
      else
        unless @total_guesses.include?(guessed_letter)
          @total_guesses << guessed_letter
          @incorrect_guesses += 1
        end
          return false

      end
    end

  end

  def give_up
    @give_up = true
    return @word.join("")
  end

  def guesses
    "current guesses: #{@total_guesses.join(", ")}"
  end

end