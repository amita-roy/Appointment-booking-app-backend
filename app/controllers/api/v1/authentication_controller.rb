class Api::V1::AuthenticationController < ApiController
  skip_before_action :authenticate_user!

  def signin
    user = User.find_by(email: params[:email])
    if user && (user.valid_password? params[:password])
      render json: { token: JsonWebToken.encode(sub: user.id), user: user }
    else
      render json: { errors: ['Invalid email or password'] }, status: 400
    end
  end

  def signup
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
