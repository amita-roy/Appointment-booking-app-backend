class Api::V1::AppointmentsController < ApiController
  skip_before_action :authenticate_user!

  def index
    @services = Service.all
    render json: @services
  end
end
