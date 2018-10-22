class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :profile]

  def profile
    token = decoded_token
    user = User.find(token[0]["user_id"])
    #UserSerializer.new(current_user)
    render json: { user:  user}, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end
 
  private
  def user_params
    params.require(:user).permit(:username, :password, :bio, :email)
  end
end
