class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :avatar_url
      t.string :latitude
      t.string :longtitude
      t.integer :open_id

      t.timestamps
    end
  end
end
