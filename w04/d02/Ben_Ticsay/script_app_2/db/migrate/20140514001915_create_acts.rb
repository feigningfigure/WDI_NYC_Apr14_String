class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :title

      t.timestamps
    end
  end
end
