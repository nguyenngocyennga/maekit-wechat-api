class AddLatitudeToMakerspaces < ActiveRecord::Migration[5.2]
  def change
    add_column :makerspaces, :latitude, :string
  end
end
