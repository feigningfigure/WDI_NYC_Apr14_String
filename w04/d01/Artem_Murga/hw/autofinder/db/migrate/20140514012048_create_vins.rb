class CreateVins < ActiveRecord::Migration
  def change
    create_table :vins do |t|
    	t.integer 	  :vin_number
    	t.integer 	  :model_id
    	t.integer	  :customer_id
    end
  end
end
