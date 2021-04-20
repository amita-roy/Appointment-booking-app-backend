class Service < ApplicationRecord
  has_many :SelectedServices
  has_many :appointments, through: :SelectedServices
end
