class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|

      t.string    :screen_name
      t.text      :member_profile

      t.timestamps
    end
  end
end
