class UsersController < ApplicationController
  # before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    authorize @user
  end
  
  # 2021 added - define what allow to edit in permit 
  def user_params
    params.require(:user).permit(:preference, :photo, :first_name, :last_name)
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      redirect_to edit_user_registration_path
    else
      render :edit
    end
    # Only for update, create and destroy you write here the paths of the buttons
  end
  
end
