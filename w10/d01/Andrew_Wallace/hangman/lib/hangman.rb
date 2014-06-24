class Hangman

  def initialize(word)
    @word = word.split("")
    @progress = @word.map { "_" }
  end

  def progress()
    @progress.join(" ")
  end

  def guess(guessed_letter)
    if @word.include?(guessed_letter)
      @word.each_with_index do |letter, index|
        if letter == guessed_letter
          @progress[index] = letter
        end
      end
      return true
    else
      return false
    end
  end

  def lose_status
    @bad_guess_count = 6
    if @bad_guess_count > 5
      return "You lost!"
    else
      return "Keep guessing!"
    end
  end

  def win_status
    if @bad_guess_count <= 5 || progress
      return
    end
  end
end
