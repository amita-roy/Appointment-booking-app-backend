class Api::V1::AppointmentsController < ApiController
  before_action :set_user

  def index
    @appointments = @user.appointments
    render json: @appointments, include: ['services']
  end

  def create
    @appointment = current_user.appointments.new(appointment_params)
    @appointment.save
    render json: { success: 'Thanks for your booking' }, status: 200
  end

  private

  def appointment_params
    params.permit(:date, :time, services: [])
  end

  def set_user
    @user = current_user
  end
end
