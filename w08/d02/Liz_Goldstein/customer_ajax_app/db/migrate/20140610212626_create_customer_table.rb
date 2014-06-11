class CreateCustomerTable < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    t.string   :name
    t.string   :address
    t.string   :email
    t.integer  :loyalty_code
    end
  end
end
