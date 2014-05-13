class CompaniesController < ApplicationController
  def index
    @companies = Company.order(id: :desc)
    @company = Company.new
  end

   def show
    # define @cookbook
    @company = Company.find(params[:id])

    # makes the form work
    @products = Product.new
  end

  def create
    Company.create(company_attributes)

    # render json: {
    #   strong_params: company_attributes
    # }

    redirect_to '/'
  end


  private

  # strong params
  def company_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:company).permit(:name, :image_url, :assets_in_billions, :founded)
  end

end
