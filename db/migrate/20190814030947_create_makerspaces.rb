class CreateMakerspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :makerspaces do |t|
      t.string :name
      t.string :logo
      t.string :location
      t.string :address
      t.string :phone_number
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
