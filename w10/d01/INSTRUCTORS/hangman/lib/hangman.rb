class Hangman

  def initialize(word)
    @word = word
  end

  def progress()
    @word.split("").map { "_" }.join(" ")
  end

  def guess(letter)
    if @word.include?(letter)
      return true
    else
      return false
    end
  end

end
