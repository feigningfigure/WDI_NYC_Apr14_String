class Hangman

@words = "detective", "gandhi"]

  def initialize(word)
    @word = @words.sample
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
      return false
    end
  end

  def game_over
  end

end