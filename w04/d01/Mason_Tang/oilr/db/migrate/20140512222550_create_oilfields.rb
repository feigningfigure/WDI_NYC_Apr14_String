class CreateOilfields < ActiveRecord::Migration
  def change
    create_table :oilfields do |t|

      t.string    :title
      t.text      :content


      t.integer   :country_id

      t.timestamps
    end
  end
end
