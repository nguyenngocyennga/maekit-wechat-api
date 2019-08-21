class AddAuthorToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :author, :string
  end
end
