class CreateCrapps < ActiveRecord::Migration
  def change
    create_table :crapps do |t|
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
