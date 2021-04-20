class Api::V1::AppointmentsController < ApiController
  skip_before_action :authenticate_user!
  before_action :set_user

  def index
    @appointments = @user.appointments
    render json: @appointments, include: ['services']
  end

  private

  def set_user
    @user = current_user
  end
end
