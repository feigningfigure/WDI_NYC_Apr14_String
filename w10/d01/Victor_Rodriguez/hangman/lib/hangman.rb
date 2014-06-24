class Hangman

  def initialize(word_array, _nums=Random.new) 
    word = word_array[_nums.rand(word_array.length)]
    @word = word.split("")
    @progress = @word.map { "_" }
    @wrong_guesses = 0
  end

  def progress()
    @progress.join(" ")
  end

  def guess?(guessed_letter)
    if @wrong_guesses < 5
      if @word.include?(guessed_letter)
        @word.each_with_index do |letter, index|
          if letter == guessed_letter
            @progress[index] = letter
          end
        end
        return true
      else
        @wrong_guesses += 1
        return false
      end
    else
      return nil
    end
  end
 
  def giveup()
    @wrong_guesses = 5
    return @word.join("")
  end

  
end