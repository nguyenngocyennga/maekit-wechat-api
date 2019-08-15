class AddPhotoUrlToMakerspaces < ActiveRecord::Migration[5.2]
  def change
    add_column :makerspaces, :photo_url, :string
  end
end
