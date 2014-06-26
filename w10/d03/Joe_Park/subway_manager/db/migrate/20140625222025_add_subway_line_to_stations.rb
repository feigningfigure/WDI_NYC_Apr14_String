class AddSubwayLineToStations < ActiveRecord::Migration
  def change
    add_column :stations, :subway_line_id, :integer
  end
end
