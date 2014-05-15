class CreateCookieWatchers < ActiveRecord::Migration
  def change
    create_table :cookie_watchers do |t|
      t.string    "name"
      t.integer   "cookies"
      t.timestamps
    end
  end
end
