class CreateBeasts < ActiveRecord::Migration
  def change
    create_table :beasts do |t|
      t.string :name
      t.string :diet
      t.string :light_ethology
      t.string :habitat
      t.string :size
      t.string :description

      t.timestamps
    end
  end
end
