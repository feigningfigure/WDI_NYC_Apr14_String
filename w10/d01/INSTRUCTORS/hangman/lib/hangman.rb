class Hangman

  def initialize(word)
    @word = word
  end

  def progress()
    @word.split("").map { "_" }.join(" ")
  end

end
