class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.integer :number
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
