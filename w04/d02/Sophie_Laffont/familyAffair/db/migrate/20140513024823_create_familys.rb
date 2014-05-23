class CreateFamilys < ActiveRecord::Migration
  def change
    create_table :familys do |t|

       t.string    :name
      t.text      :relationship

    end
  end
end
