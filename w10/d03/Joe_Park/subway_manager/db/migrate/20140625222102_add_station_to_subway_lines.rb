class AddStationToSubwayLines < ActiveRecord::Migration
  def change
    add_column :subway_lines, :station_id, :integer
  end
end
