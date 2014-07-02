class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.integer :comment_id

      t.timestamps
    end
  end
end
