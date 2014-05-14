class CreateSuperteams < ActiveRecord::Migration
  def change
    create_table :superteams do |t|
      t.string :name
      t.string :headquarters
      t.string :headquarters_location
      t.integer :num_members

      t.timestamps
    end
  end
end
