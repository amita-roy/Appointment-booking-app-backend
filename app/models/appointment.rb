class Appointment < ApplicationRecord
  belongs_to :user
  has_many :services, through: :selectedservice
end
