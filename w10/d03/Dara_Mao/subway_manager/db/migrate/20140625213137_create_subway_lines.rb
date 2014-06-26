class CreateSubwayLines < ActiveRecord::Migration
  def change
    create_table :subway_lines do |t|
       t.string  :name
       t.string  :color

      t.timestamps
    end
  end
end
