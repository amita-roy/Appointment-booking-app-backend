class Api::V1::ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @services = Service.all
    render json: @services, status: 200
  end
end
