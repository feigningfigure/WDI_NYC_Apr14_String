class CompaniesController < ApplicationController
  def index
    @companies = Company.order(assets_in_billions: :desc)
    @company = Company.new
  end

   def show
    @company = Company.find(params[:id])

  end

  def create
    Company.create(company_attributes)

    # render json: {
    #   strong_params: company_attributes
    # }

    redirect_to '/'
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update

    company = Company.find(params[:id])

    company.update_attributes(company_attributes)

    # render json: cookbook
    redirect_to "/companies/#{params[:id]}"
  end



  private

  # strong params
  def company_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:company).permit(:name, :image_url, :assets_in_billions, :founded)
  end

end
