class GeneratePeople < ActiveRecord::Migration
  def change
  	create_table :people do |t|
  		t.integer :country_id

  		t.string :name

  	end
  end
end
