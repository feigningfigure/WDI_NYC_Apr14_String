class Hangman

  def initialize(word_array, _nums=Random.new)
    word = word_array[_nums.rand(word_array.length)]
    @word = word.split("")
    @progress = @word.map { "_" }
    @attempts = 0
    @incorrect_guesses = []
    @hint_count = 0
  end

  def progress()
    # return "_ _ _ _ _ _ _ _ _"
    # @word.split("").map { "_" }.join(" ")
    # split separates all letters into an array and map transforms and join joins them with a space
    if @attempts < 5
      @progress.join(" ")
    else
      @progress = @word.join("")
    end
  end

  def guess(guessed_letter)
    if @attempts < 5  
      if @word.include? guessed_letter
        @word.each_with_index do |letter, index|
          if letter == guessed_letter
            @progress[index] = letter
          end
        end
        return true
      else
        if @incorrect_guesses.include? guessed_letter
          guesses
        else
          @attempts += 1
          @incorrect_guesses << guessed_letter
          return false
        end
      end
    else
      return nil
    end
  end

  def giveup
    @attempts = 5
    @progress = @word.join("")
  end

  def incorrect
    return @attempts
  end

  def guesses
    return @incorrect_guesses.join(", ")
  end

  def hint
    hint_letter = @word.sample 
      if @progress.include? hint_letter
        hint
      else
        guess(hint_letter)
        @hint_count += 1
        if @hint_count > 1 
          @attempts += 1
        end
        return hint_letter
      end
  end

end
