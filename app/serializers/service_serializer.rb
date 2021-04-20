class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :offer, :price, :description, :duration
  belongs_to :appointment
end
