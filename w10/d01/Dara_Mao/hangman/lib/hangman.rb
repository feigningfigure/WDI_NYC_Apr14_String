class Hangman

  def initialize(word)
    @word = word.split("")
    @progress = @word.map{"_"}
  end

  def progress ()
    @progress.join(" ")
  end

  def guess(guessed_letter)
    if @word.include?(guessed_letter)
      @word.each_with_index do |letter,index|
      if letter == guessed_letter
        @progress[index] = letter
      end
    end
      return true
    else
      return false
    end
  end

  def game_over()

  end


end
       # index_num = @word.index(letter)

       # @word.split("")
       # (0..index_num)
       # (index_num..@word.length)
