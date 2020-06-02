class ProfileController < ApplicationController
  def show
    render json: current_user
    #render json: {"first_name": current_user.first_name}
  end
end
