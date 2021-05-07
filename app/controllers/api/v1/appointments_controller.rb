class Api::V1::AppointmentsController < ApplicationController
  before_action :set_user

  def index
    @appointments = @user.appointments
    render json: @appointments, status: 200
  end

  def create
    @appointment = current_user.appointments.new(appointment_params)
    @appointment.save
    render json: { success: 'Thanks for your booking' }, status: 200
  end

  private

  def set_user
    @user = current_user
  end

  def appointment_params
    params.permit(:date, :time, :user_id, :service_id)
  end
end
