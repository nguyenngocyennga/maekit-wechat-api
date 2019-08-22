class Makerspace < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
