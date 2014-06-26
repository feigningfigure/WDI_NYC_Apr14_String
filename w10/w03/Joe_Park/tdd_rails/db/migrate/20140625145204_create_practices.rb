class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :title

      t.timestamps
    end
  end
end
