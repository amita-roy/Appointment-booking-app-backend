class Service < ApplicationRecord
  has_many :appointments, through: :selectedservice
end
