class Api::V1::UserRestictionsController < ApplicationController
  skip_before_action :authorized, only: [:create, :profile, :index, :delete]

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
    @user_restriction = UserRestriction.new(user_restriction_params)
    @user_restriction.user = current_user
    @user_restriction.save

  end

  def delete
    # Check that User does not double restriction

    user = current_user
    restrictionId = user_restriction_params["restriction_id"]
    @user_restrictions = UserRestriction.find_by(user_id: user.id, restriction_id: restrictionId.to_i)
    @user_restrictions.destroy
    render status: 200
  end
 
  private
  def user_restriction_params
    params.require(:user).permit(:restriction_id)
  end
end
