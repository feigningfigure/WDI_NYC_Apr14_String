class ProducersController < ApplicationController


def index

@producers = Producer.order(id: :desc)

    # new instance of producer for the form helper
    @producer = Producer.new
    # render json: @producers
end

def show
      # by default...
    # render :name_of_this_method

    # define @producer
    @producer = Producer.find(params[:id])

    # makes the form work
    @beat = Beat.new

    # binding.pry
  end

  def create
    # add .create soon..

    # old way...
    # producer_attributes = params[:cookbook]

    # new way... *but requires private_method

    Producer.create(producer_attributes)

    render json: {
      strong_params: producer_attributes
    }


    # when done...
    redirect_to producers_path
  end

  def edit
    @producer = Producer.find(params[:id])
    # render json: @producer
    render partial: "producerform", locals: { producer_local: @producer }
  end

   def update

    producer = Producer.find(params[:id])

    producer.update_attributes(producer_attributes)

    # render json: producer
    redirect_to "/producers/#{params[:id]}"
  end

  private

  # strong params
  def producer_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:producer).permit(:title, :description)
  end

end





















