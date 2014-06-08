class AddImageToBeasts < ActiveRecord::Migration
  def change
    change_table "beasts" do |t|
      t.string "image_filename"
    end
  end
end
