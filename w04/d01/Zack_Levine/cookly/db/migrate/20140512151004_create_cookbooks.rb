class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|

      t.string    :screen_name
      t.text      :member_profile

      t.timestamps

    end
  end
end
