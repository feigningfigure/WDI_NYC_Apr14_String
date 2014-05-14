class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.integer	:game_id
    	t.integer	:player_id

    	t.integer	:quantity

    end
  end
end
