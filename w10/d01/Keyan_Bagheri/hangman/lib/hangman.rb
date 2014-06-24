class Hangman

  def initialize(word)
    if word.class == Array
      @word = word.sample.split("")
    else
      @word = word.split("")
    end
    @progress = @word.map { "_" }
    @bad_guesses = []
    @guessed_letters = []
  end

  def progress
    if incorrect < 5
      @progress.join(" ")
    else
      @word.join("")
    end
  end

  def incorrect_guesses
    if incorrect < 5
      "Incorrect guesses: " + @bad_guesses.join(",")
    end
  end

  def incorrect
    @bad_guesses.length
  end

  def hint
    hint_letter = @word.sample
    if @guessed_letters.include? hint_letter
      hint
    else
      guess(hint_letter)
    end
  end

  def guesses
    @guessed_letters
  end

  def giveUp()
    @bad_guesses = ["g","i","v","e","u","p"]
    progress
  end

  def guess(guessed_letter)
    if @guessed_letters.include? guessed_letter
      return "You made that guess already. Guess again."
    else
      @guessed_letters << guessed_letter
      if incorrect < 5
        if @word.include? guessed_letter
          @word.each_with_index do |letter, index|
            if letter == guessed_letter
              @progress[index] = letter
            end
          end
          return true
        else
          @bad_guesses << guessed_letter
          return false
        end
      else
        return nil
      end
      return incorrect_guesses
      return progress
    end
  end

end
