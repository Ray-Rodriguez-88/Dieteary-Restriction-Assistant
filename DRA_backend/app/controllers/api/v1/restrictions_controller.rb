class Api::V1::RestrictionsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    restrictions = Restriction.all
    render json: restrictions
  end

  def update
    @restriction.update(restriction_params)
    if @restriction.save
      render json: @restriction, status: :accepted
    else
      render json: { errors: @restriction.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @restriction = UserRestriction.create(user_restriction_params)
  end

  private

  def restriction_params
    params.permit(:source, :description)
  end

  def find_restriction
    @restriction = Restriction.find(params[:id])
  end

end
