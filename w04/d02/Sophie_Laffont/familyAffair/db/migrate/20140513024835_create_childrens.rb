class CreateChildrens < ActiveRecord::Migration
  def change
    create_table :childrens do |t|

       t.string      :name
      t.text        :sex

      # this must be called 'relation_id'
      t.integer     :parent_id

      t.timestamps
    end
  end
end
