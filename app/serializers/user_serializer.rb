class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :appointments, :services
  has_many :appointments
  has_many :services, through: :appointments
end
