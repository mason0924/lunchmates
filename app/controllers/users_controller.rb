class UsersController < ApplicationController
  # before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    preference = @user.preference
    authorize @user
    if @user.update(user_preference)
      redirect_to edit_user_registration_path
    else
      render :edit
    end
    # Only for update, create and destroy you write here the paths of the buttons
  end

  def user_params
    params.require(:user).permit(:first_name)
  end

  def user_preference
    params.require(:user).permit(:preference)
  end
end
