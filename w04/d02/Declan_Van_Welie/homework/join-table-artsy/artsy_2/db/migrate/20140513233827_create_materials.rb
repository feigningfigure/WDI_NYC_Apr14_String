class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :subject_id
      t.integer :work_id
      t.string  :name

    end
  end
end
