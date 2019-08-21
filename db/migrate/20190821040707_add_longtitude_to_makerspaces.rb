class AddLongtitudeToMakerspaces < ActiveRecord::Migration[5.2]
  def change
    add_column :makerspaces, :longtitude, :string
  end
end
