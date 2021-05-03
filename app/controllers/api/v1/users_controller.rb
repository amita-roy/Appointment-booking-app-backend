class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def index
    @users = User.all
    render json: @user, status: 200
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: { token: JsonWebToken.encode(sub: user.id), user: user }
    else
      render json: { errors: user.errors.full_messages }, status: 400
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end
