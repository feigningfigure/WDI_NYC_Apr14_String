class CreateCookiewatchers < ActiveRecord::Migration
  def change
    create_table :cookiewatchers do |t|
      t.string :name
      t.int :cookies

      t.timestamps
    end
  end
end
