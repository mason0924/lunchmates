class UsersController < ApplicationController
  # before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    authorize @user
  end
  
  def user_params
    params.require(:user).permit(:preference, :photo)
  end

end
