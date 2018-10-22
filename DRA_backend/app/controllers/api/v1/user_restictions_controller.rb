class Api::V1::UserRestictionsController < ApplicationController
  skip_before_action :authorized, only: [:create, :profile, :index]

  def profile
    token = decoded_token
    user = User.find(token[0]["user_id"])
    render json: { user: user}, status: :accepted
  end

  def index
    user_restrictions = UserRestriction.all
    render json: user_restrictions
  end

  def create
    # Check that User does not double restriction
    @user_restrictions = UserRestriction.create(user_restriction_params)

  end
 
  private
  def user_restriction_params
    params.require(:user).permit(:restriction)
  end
end
