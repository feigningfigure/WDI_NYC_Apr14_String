class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
    	t.string :name
    	t.string :country
    	# t.has_many :models
      t.timestamps
    end
  end
end
