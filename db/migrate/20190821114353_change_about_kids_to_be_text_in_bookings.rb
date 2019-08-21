class ChangeAboutKidsToBeTextInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :about_kids, :text
  end
end
