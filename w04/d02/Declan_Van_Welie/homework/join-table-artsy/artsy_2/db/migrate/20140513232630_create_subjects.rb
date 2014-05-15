class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :genre
      t.string :representational

      t.timestamps
    end
  end
end
