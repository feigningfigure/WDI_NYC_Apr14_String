class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|

    	 t.string    :name
      	t.text   :nationality
		t.timestamps

    end
  end
end
