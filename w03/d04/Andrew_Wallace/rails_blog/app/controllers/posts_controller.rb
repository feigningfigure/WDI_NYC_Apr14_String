class PostsController < ActionController::Base

  # sets the default layout
  layout "application"

  def index

  end

  def new

  end

  def paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 3)
        sentences(resolve(sentence_count) + rand(random_sentences_to_add.to_i).to_i, supplemental).join(' ')
  end

end
