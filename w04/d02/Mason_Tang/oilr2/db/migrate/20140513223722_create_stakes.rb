class CreateStakes < ActiveRecord::Migration
  def change
    create_table :stakes do |t|
      t.integer :operator_id
      t.integer :stake_id
      t.integer :percentage
    end
  end
end
