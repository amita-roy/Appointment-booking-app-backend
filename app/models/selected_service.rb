class SelectedService < ApplicationRecord
  belongs_to :appointment
  belongs_to :service
end
