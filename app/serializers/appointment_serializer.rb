class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :user_id, :service_id
  belongs_to :user
  belongs_to :service
end
