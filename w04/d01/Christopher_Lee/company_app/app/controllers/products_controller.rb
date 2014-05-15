class ProductsController < ApplicationController
  def new
    @company = params[:id]
    @product = Product.new
  end

  def create
    Product.create(product_attributes)
    # render json: Recipe.create(recipe_attributes)
    redirect_to "/companies/#{product_attributes[:company_id]}"
  end

  def edit
    @product = Product.find(params[:id])
    @company = Company.find(@product.company_id)
    @countries = Country.all
    @distributor = Distributor.new
  end


  def update
    product = Product.find(params[:product_id])
    product.update_attributes(product_attributes)
    # render json: product_attributes
    redirect_to "/companies/#{product_attributes[:company_id]}"
  end

  def add_distributor
    product = Product.find(params[:distributor][:product_id])
    selected_country = Country.find(params[:country][:id])
    product.distributors.create(country: selected_country)
    redirect_to "/products/#{product.id}/edit"
  end

  private

  def product_attributes
    params.require(:product).permit(:name, :image_url, :founded, :company_id)
  end

end
