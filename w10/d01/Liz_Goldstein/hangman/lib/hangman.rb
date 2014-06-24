class Hangman

  def initialize(word)
    @word = word.chars
    @progress = @word.map { "_" }
    @counter = 0
  end

  def progress()
    @progress.join(" ")
  end

  def guess?(guessed_letter)
  if @counter < 5
    if @word.include?(guessed_letter)
      @word.each_with_index do |letter, index|
        if letter == guessed_letter
          @progress[index] = letter
        end
        if @word == @progress
          return "Won!!"
        end
      end
    return true
    else
      @counter +=1
      return false
    end
  else
    return "GAME OVER"
  end
end

  def game_counter
    if @counter < 5
      return @counter
    else
      return "game over"
    end
  end


end

