class Hangman

  def initialize(arry, _nums=Random.new)
    word = arry[_nums.rand(arry.length)]
    @word = word.split("")
    @progress = @word.map { "_" }
    @guesses_so_far = []
    @chances = 0
  end


  def progress
    if @chances < 5
      return @progress.join(" ")
    else
      return @word.join("")
    end
    puts "Incorrect number of guesses: #{@guesses_so_far.length}. #{5 - @guesses_so_far.length} guesses to go"
  end

  def guess(guess_letter)
    if @chances > 5
      return "Stahp!"
    elsif @chances == 5
      @chances += 1
      return "Womp womp.."
    else
      if @word.include? guess_letter
          @word.each_with_index do |letter, index|
            if letter === guess_letter
              @progress[index] = letter
              if @progress == @word
                 return "Woot woot!"
                 @chances = 10
              end
            end
          end
        return true
      else
        @chances += 1
        @guesses_so_far << guess_letter
        return false
      end
    end
  end

  def my_guesses
    return @guesses_so_far.join(", ")
  end

  def giveUp
    return "Looser! The word was: #{@word.join("")}"
    @chances = 10
  end

end
