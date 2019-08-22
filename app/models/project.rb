class Project < ApplicationRecord
  has_many :project_steps, dependent: :destroy
  has_many :materials, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
