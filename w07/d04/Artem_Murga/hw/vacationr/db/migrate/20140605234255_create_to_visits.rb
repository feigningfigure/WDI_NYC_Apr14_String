class CreateToVisits < ActiveRecord::Migration
  def change
    create_table :to_visits do |t|
      t.string :place
      t.string :season
      t.integer :priority

      t.timestamps
    end
  end
end
