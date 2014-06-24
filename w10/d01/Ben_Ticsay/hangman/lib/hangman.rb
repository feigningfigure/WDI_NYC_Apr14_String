class Hangman

  wrong_guesses = []

  def initialize(word)
    @word = word.chars
    @progress = @word.map { "_" }
  end

  def progress()
    @progress.join(" ")
  end

  def guess?(guessed_letter)
    if @word.include?(guessed_letter)
      @word.each_with_index do |letter, index|
        if letter == guessed_letter
          @progress[index] = letter
        end
      end
      return true
    else
      # wrong_guesses << guessed_letter
      # # if wrong_guesses[4] == guessed_letter
      # #   return nil
      # # end
      return false
    end
  end

end
