class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :makerspace, foreign_key: true
      t.string :title
      t.string :location
      t.date :date
      t.time :time
      t.text :description
      t.string :event_photo

      t.timestamps
    end
  end
end
