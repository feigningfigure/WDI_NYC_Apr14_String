class CreateTeamsTable < ActiveRecord::Migration
  def change
    create_table :teams do |t|

    	t.string :name
    	t.string :city
    	t.string :url

    	t.timestamps

    end
  end
end
