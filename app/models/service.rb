class Service < ApplicationRecord
  has_many :SelectedServices, dependent: :destroy
  has_many :appointments, through: :SelectedServices, dependent: :delete_all
end
