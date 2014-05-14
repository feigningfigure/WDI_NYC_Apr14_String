# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.destroy_all
Product.destroy_all
Country.destroy_all

new_company = Company.create :name => "Pepsico", :image_url => "pepsi.com", :assets_in_billions => 22, :founded => 1947

Product.create :name => "San Pellegrino", :image_url => "sanpellegrino.com", :founded => 1947, :company_id => new_company.id
Country.create :name => "France", :language => "French", :gdp => 2.6


product = Product.first
country = Country.first

product.distributors.create(country: country)
