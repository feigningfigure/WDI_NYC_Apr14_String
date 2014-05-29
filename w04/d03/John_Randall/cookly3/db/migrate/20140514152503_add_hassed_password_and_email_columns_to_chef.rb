class AddHassedPasswordAndEmailColumnsToChef < ActiveRecord::Migration
  def change
  	add_column :chefs, :email, :string
  	add_column :chefs, :hased_password, :string
  end
end
