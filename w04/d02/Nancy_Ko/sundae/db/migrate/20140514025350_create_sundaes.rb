class CreateSundaes < ActiveRecord::Migration
  def change
    create_table :sundaes do |t|
    	t.integer :topping_id
    	t.integer :ice_cream_flavor_id
    end
  end
end
