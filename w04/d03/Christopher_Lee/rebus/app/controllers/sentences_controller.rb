class SentencesController < ApplicationController
  def index
    @sentence = Sentence.new
    @sentences = Sentence.all
  end

  def create
    # Sentence.create(sentence_attributes)
    params[:photo_1] = Sentence.get_photo(params[:photo_1])
    params[:photo_2] = Sentence.get_photo(params[:photo_2])
    params[:photo_3] = Sentence.get_photo(params[:photo_3])
    render json: {
      strong_params: sentence_attributes
    }

    # redirect_to '/'
  end

  private
  def sentence_attributes
    params.require(:sentence).permit(:photo_1, :word_1, :photo_2, :word_2, :photo_3)
  end
end
