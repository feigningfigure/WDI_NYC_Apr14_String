class CreateContinent < ActiveRecord::Migration
  def change
    create_table :continents do |t|
      t.string :name
      t.string :area

      t.timestamps
    end
  end
end
