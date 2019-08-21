class ChangeFromDateToBeDateInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :from_date, 'date USING CAST(from_date AS date)'
  end
end