class Project < ApplicationRecord
  has_many :project_steps, dependent: :destroy
end
