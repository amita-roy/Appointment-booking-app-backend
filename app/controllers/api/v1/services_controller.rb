class Api::V1::ServicesController < ApiController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @services = Service.all
    render json: { services: @services }, status: 200
  end
end
