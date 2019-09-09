class AddScanToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :scan, :string
  end
end
