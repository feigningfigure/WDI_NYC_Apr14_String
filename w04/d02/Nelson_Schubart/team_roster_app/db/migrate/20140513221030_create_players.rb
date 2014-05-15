class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.string    :first_name
      t.string    :last_name
      t.integer   :jersey_number
      t.string    :position
      # t.text      :bio
      # t.float     :batting_avg
      # t.string    :record

    end
  end
end
