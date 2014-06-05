class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|
      t.string :user_name
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
