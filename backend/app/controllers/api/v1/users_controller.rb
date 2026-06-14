class Api::V1::UsersController < ActionController::API
  def index
    users = User.all
    render json: { status: 'SUCCESS', message: 'Loaded users', data: users }
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: { status: 'SUCCESS', data: user }, status: :created
    else
      render json: { status: 'ERROR', data: user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :role)
  end
end 