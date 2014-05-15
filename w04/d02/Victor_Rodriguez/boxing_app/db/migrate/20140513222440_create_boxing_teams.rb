class CreateBoxingTeams < ActiveRecord::Migration
  def change
    create_table :boxing_teams do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
