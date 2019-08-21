class AddVideoUrlToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :video_url, :string
  end
end
