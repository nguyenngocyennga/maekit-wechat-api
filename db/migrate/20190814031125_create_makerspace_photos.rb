class CreateMakerspacePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :makerspace_photos do |t|
      t.references :makerspace, foreign_key: true
      t.string :image_url
      t.string :image_title

      t.timestamps
    end
  end
end
