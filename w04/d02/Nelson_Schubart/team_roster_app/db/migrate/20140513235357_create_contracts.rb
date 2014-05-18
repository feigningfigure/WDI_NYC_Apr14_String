class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|


      t.string :sponsor_id
      t.string :player_id

      t.integer :value

    end
  end
end
