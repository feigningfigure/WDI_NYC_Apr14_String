class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.int :id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
