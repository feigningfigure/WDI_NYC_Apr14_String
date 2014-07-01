class CreateBourbons < ActiveRecord::Migration
  def change
    create_table :bourbons do |t|
      t.string :name

      t.timestamps
    end
  end
end
