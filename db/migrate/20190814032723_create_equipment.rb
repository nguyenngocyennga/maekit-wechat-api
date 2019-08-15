class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :description
      t.string :photo_url

      t.timestamps
    end
  end
end
