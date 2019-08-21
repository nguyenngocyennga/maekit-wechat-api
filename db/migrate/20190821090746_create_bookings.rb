class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :makerspace, foreign_key: true
      t.references :project, foreign_key: true
      t.string :name
      t.string :phone_number
      t.string :email
      t.integer :number_students
      t.string :from_date
      t.date :to_date
      t.string :about_kids
      t.text :other_message

      t.timestamps
    end
  end
end
