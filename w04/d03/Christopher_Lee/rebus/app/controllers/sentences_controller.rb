class SentencesController < ApplicationController
  def index
    @sentence = Sentence.new
    @sentences = Sentence.all
  end

  def create
    # sentence_attributes["photo_1"] = Sentence.get_photo!(sentence_attributes[:photo_1])
    # sentence_attributes["photo_2"] = Sentence.get_photo!(sentence_attributes[:photo_2])
    # sentence_attributes["photo_3"] = Sentence.get_photo!(sentence_attributes[:photo_3])

    # photo_1 = Sentence.get_photo!(sentence_attributes[:photo_1])
    # sentence_attributes["photo_1"] = photo_1
    # photo_2 = Sentence.get_photo!(sentence_attributes[:photo_1])
    # sentence_attributes["photo_2"] = photo_2
    # photo_3 = Sentence.get_photo!(sentence_attributes[:photo_1])
    # sentence_attributes["photo_2"] = photo_3
    # Sentence.get_photo!(sentence_attributes[:photo_2])
    # Sentence.get_photo!(sentence_attributes[:photo_3])
    # render json: {
    #   strong_params: sentence_attributes
    # }
    Sentence.create(sentence_attributes)

    redirect_to '/'
  end

  private
  def sentence_attributes
    params.require(:sentence).permit(:photo_1, :word_1, :photo_2, :word_2, :photo_3)
  end
end
