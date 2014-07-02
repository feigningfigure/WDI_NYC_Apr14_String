class CreateCupcakes < ActiveRecord::Migration
  def change
    create_table :cupcakes do |t|

      t.timestamps
    end
  end
end
