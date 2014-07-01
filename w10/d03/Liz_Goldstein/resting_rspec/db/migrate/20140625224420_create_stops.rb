class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|

      t.belongs_to :subway_line
      t.belongs_to :station

      t.timestamps
    end
  end
end
