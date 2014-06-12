class Customer < ActiveRecord::Migration
  def change
  create_table :people do |t|
    t.string   :name
    t.string   :address
    t.string   :email
    t.integer  :loyalty_code
  end
  end
end
