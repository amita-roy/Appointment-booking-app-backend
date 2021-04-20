class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time
  belongs_to :user
  has_many :services
end
