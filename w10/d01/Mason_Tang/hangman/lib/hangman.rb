class Hangman

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
      return false
    end
  end

end
