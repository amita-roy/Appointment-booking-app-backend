class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :total_amount
  belongs_to :user
  has_many :services, through: :SelectedServices
end
