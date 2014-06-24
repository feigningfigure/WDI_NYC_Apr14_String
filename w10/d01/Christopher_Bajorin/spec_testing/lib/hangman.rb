class Hangman

  def initialize(input)
    if input.class == Array
      word = input.sample
    else
      word = input
    end
    @word = word.split("")
    @progress = @word.map{ "_" }
    @counter = 0
    @win = false
    @guesses = []
    @hinted = false
  end

  def progress()
    if @counter > 5
      return @word.join("")
    else
      @progress.join(" ")
    end
  end

  def guess(guessed_letter)
    @guesses << guessed_letter
    @guesses.uniq!
    if @counter <= 5 && @win == false
      if @word.include?(guessed_letter)
        @word.each_with_index do |letter, index|
          if letter == guessed_letter
            @progress[index] = letter
          end
        end
        if @word.join("") == @progress.join("")
          @win = true
          return "Congratulations!"
        else
          return true
        end
      else
        @counter += 1
        return false
      end
    elsif @win == true
      return "You've already won!"
    else
      return nil
    end
  end

  def giveUp()
    @counter = 6
    return @word.join("")
  end

  def incorrect()
    return @counter
  end

  def guesses()
    return @guesses.join(",")
  end

  def hint()
    if @hinted == true
      @counter += 1
    else
      @hinted = true
    end
    available = @word - @guesses
    return available.sample
  end

end
