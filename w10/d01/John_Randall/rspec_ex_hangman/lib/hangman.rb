class Hangman
  # attr_accessor :incorrect_guess_count

  def initialize(word)
    word_klass = word.class
    case word_klass
      when 'String'
        @solution_arr = word.each_char.to_a
      when 'Array'
        @solution_arr = word.sample.each_char.to_a
      else
        @solution_arr = word.each_char.to_a
    end
    
    @letters_guessed = []
    
    @incorrect_guess_count = 0
    # @correct_guess_count = 0

    @progress = @solution_arr.map { "_" }
  end

  def progress()
    if game_over?
      return @solution_arr.join(" ")
    else
      return @progress.join(" ")
    end
  end

  def guess?(guessed_letter)
    if game_over?
      return nil
    end

 
    

    @letters_guessed << guessed_letter unless @letters_guessed.include?(guessed_letter)

    if @solution_arr.include?(guessed_letter)
      
      @solution_arr.each_with_index do |letter, index|
        if letter == guessed_letter
          @progress[index] = letter
        end
      end
      return true

    else
      
      @incorrect_guess_count = @incorrect_guess_count + 1 unless @letters_guessed.include?(guessed_letter)
      return false

    end

  end

 

  def game_status
    if @incorrect_guess_count >5
      return :lost
    elsif letters_guessed_encompasses_solution?
      return :won
    else
      return :ongoing
    end
  end

  def game_over?
    if game_status == :lost || game_status == :won
      return true
    else
      return false
    end
  end

  def letters_guessed_encompasses_solution?
    @solution_arr.each do |letter|
      if @letters_guessed.include?(letter) 
        # GOOD
      else 
        return false
      end
      return true
    end
  end

  def guesses()
    return @letters_guessed.uniq.join(", ")
  end

  def incorrect()
    return @incorrect_guess_count
  end

  

end
