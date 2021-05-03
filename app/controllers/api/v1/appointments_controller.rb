class Api::V1::AppointmentsController < ApplicationController
  before_action :set_user

  def index
    @appointments = @user.appointments
    render json: @appointments, include: ['services'], status: 200
  end

  def create
    date = params['date']
    time = params['time']
    total_amount = params['total_amount']
    @appointment = current_user.appointments.new({ date: date, time: time, total_amount: total_amount })
    params['services'].each do |s|
      service = Service.find(s['id'])
      @appointment.services.push(service)
    end
    @appointment.save
    render json: { success: 'Thanks for your booking' }, status: 200
  end

  private

  def set_user
    @user = current_user
  end
end
