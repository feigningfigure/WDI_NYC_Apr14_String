class CreateBoxers < ActiveRecord::Migration
  def change
    create_table :boxers do |t|
      t.string :name
      t.string :weightclass

      t.timestamps
    end
  end
end
