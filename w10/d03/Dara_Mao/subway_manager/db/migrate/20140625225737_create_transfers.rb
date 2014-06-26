class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.belongs_to :station
      t.belongs_to :subway_line

      t.timestamps
    end
  end
end
