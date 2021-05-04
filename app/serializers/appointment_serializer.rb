class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :user, :service
  belongs_to :user
  belongs_to :service
end
