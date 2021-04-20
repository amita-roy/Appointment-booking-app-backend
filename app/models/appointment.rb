class Appointment < ApplicationRecord
  belongs_to :user
  has_many :SelectedServices
  has_many :services, through: :SelectedServices
end
