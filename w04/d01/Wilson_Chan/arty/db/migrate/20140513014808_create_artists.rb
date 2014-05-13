class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|

      t.string      :name
      t.text        :description

      # this must be called 'relation_id'
      t.integer     :gallery_id
      t.timestamps
    end
  end
end
