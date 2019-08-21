class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :makerspace
  belongs_to :project
end
