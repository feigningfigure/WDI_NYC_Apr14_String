class DropSubwayLinesTable < ActiveRecord::Migration
  def change
  	drop_table :subway_lines
  end
end
