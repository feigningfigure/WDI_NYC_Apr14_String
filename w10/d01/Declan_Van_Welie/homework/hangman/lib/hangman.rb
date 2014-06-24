class Hangman

  def initialize(word)
    if word.kind_of?(String)
    @split_word = word.split("")
    else
    rand_word = word[0]
    @split_word = rand_word.split("")
    end
    @progress = @split_word.map { "_" }
    @guess_counter = 0
    @hint_counter = 0
    @guesses = []
    @incorrect = []
  end

  def progress()
    if @guess_counter < 6
      @progress.join(" ")
    else
       @split_word.join
    end
  end

  def guess(guessed_letter)
    @guessed_letter = guessed_letter
    if @split_word.include?(@guessed_letter) && @guess_counter < 6
      @split_word.each_with_index do |letter, index|
        if letter == @guessed_letter
          @progress[index] = letter
        end
      end
      if !@guesses.include?(@guessed_letter)
        @guess_counter += 1
        @guesses.push(@guessed_letter)
      end
      return true
    elsif !@guesses.include?(@guessed_letter) &&  @guess_counter < 6
          @guess_counter += 1
          @guesses.push(@guessed_letter)
          @incorrect.push(@guessed_letter)
      return false
    else
      return nil
    end
  end

  def guess_counter()
    return @guess_counter
  end

  def give_up()
    @guess_counter = 6
    @split_word.join
  end

  def guesses()
    return @guesses.join(", ")
  end

  def incorrect()
    return @incorrect.count
  end

  def hint()
    @hint_counter += 1
    letter_reveal = @split_word.sample
    if @hint_counter > 1
      @guess_counter += 1
      @incorrect.push(letter_reveal)
    end
    @split_word.each_with_index do |letter, index|
        if letter == letter_reveal
          @progress[index] = letter
        end
      end
      return letter_reveal
  end

end
