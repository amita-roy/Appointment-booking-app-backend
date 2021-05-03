class Api::V1::SessionController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    user = User.find_by(email: params[:email])
    if user && (user.valid_password? params[:password])
      render json: { token: JsonWebToken.encode(sub: user.id), user: user }
    else
      render json: { errors: ['Invalid email or password'] }, status: 400
    end
  end
end
