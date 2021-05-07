class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :offer, :price, :description, :duration, :image, :long_desc
end
