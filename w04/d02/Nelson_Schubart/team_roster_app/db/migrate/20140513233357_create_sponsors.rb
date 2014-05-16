class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|

      t.string  :brand

    end
  end
end
