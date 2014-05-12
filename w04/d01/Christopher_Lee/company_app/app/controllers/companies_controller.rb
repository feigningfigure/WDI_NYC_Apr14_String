class CompaniesController < ApplicationController
  def index
    @companies = Company.order(id: :desc)
  end
end
