class Game_engine

#   ## GAME CONFIG


  @@tag_questions_order = [
    :male,
    :glasses,
    :hat,
    :facial_hair,
    :beard,
    :mustache,
    :jewelry,
    :earings,
    :facial_piercing,
    :hair_color,
    :eye_color]


  @@sym_to_questions_mapping = {
    male: "Male?",
    glasses: "Glasses?",
    hat: "Hat?",
    facial_hair: "Facial Hair?",
    beard: "Beard?",
    mustache: "Mustache?",
    jewelry: "Jewelry?",
    earings: "Earrings?",
    facial_piercing: "Facial Piercing?",
    hair_color: "Hair Color?",
    eye_color: "Eye Color?"}

  @@number_of_cards = 9

  @@guesses_allowed = 3




  ## GAME CONSTANTS
  @@deck = Card.all
  @@grid_cards = @@deck.sample(@@number_of_cards)
  @@winner = @@deck.sample(1)
  @@array_of_questions = [] #gets populated later


  ## GAME VARIABLES
  @@wrong_guess_counter = 0


  ## GAME ATTIRIBUTE ACCESORS
  def self.deck
    return @@deck
  end

  def self.grid_cards
    return @@grid_cards
  end

  def self.winner
    return @@winner
  end

  def self.array_of_questions
    return @@array_of_questions
  end

  def self.guesses_allowed
    return @@guesses_allowed
  end

  def self.wrong_guess_counter
    return @@wrong_guess_counter
  end


#   ## GAME METHODS
#   #### setup methods

  def self.reset_game()
    @@grid_cards = @@deck.sample(@@number_of_cards)
    @@winner = @@deck.sample(1)[0]
    populate_array_of_questions()
    @@wrong_guess_counter = 0
  end

  def self.populate_array_of_questions
    @@array_of_questions = []         # MAYBE THIS SHOULDN'T BE HERE????

    @@tag_questions_order.each do |k|
      @@array_of_questions << Question.new(k, @@sym_to_questions_mapping[k])
    end
  end


  def self.mark_question_as_revealed(question_selected)
    question_selected = question_selected.to_sym
    index_of_question_selected = @@tag_questions_order.index(question_selected)

    # binding.pry
    
    @@array_of_questions[index_of_question_selected].question_revealed_status = true
  end
  
  def self.check_if_winner_by_username(card_selected_username)
    @@wrong_guess_counter = @@wrong_guess_counter + 1
    if card_selected_username == @@winner.username
      return true
    else
      return false
    end
  end

end



class Question
  attr_accessor :question_sym, :question_text, :question_revealed_status

  def initialize(question_sym, question_text, question_revealed_status = false)
    @question_sym = question_sym
    @question_text = question_text
    @question_revealed_status = question_revealed_status
  end

end
#





# RETURN THE ANSER FROM THE WINNER

# winning_card = Game_engine.winner
# winning_card.




