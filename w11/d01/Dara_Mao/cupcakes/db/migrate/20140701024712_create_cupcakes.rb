class CreateCupcakes < ActiveRecord::Migration
  def change
    create_table :cupcakes do |t|
      t.string :flavor
      t.string :size
      t.integer :unit

      t.timestamps
    end
  end
end
