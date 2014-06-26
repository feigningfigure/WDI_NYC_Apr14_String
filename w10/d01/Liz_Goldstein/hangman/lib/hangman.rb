class Hangman

  def initialize(word)
    @orginal = word
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
      end
    if @orginal  == @progress.to_s.gsub(" ","")
      return "Won!!"
    else
     true
    end
  else
    @counter +=1
    return "#{@counter} guesses made"
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

def giveUp
  @counter = 5
  return @orginal
end

end

