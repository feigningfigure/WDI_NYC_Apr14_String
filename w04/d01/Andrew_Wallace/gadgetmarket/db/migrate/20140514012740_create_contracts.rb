class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name
      t.date :expiration
      t.integer :company_id
      t.integer :distributor_id

      t.timestamps
    end
  end
end
