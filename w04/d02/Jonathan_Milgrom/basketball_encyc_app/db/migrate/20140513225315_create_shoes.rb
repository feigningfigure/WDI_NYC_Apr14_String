class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|

    	t.string :brand
    	
    end
  end
end
