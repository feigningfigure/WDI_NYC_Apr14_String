class Hangman
  def initialize(word)
    @word = word
  end

  def progress()
    @word.split("").map {"_"}.join(" ")
  end

  def guess(letter)
    if @word.include?("letter")
      index = @word.index(letter)
      @progress[index] = letter
      return true
    else
      return false
    end
  end



end
