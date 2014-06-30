class ChangeStationAddressColumnFromIntegerToString < ActiveRecord::Migration
  def change


 reversible do |dir|
      change_table :stations do |t|
        dir.up   { t.change :address, :string }
        dir.down { t.change :address, :integer }
      end
    end

  end
end
