class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.integer :id
      t.string :name
      t.text :description
    end
  end
end
