class UsersController < ApplicationController
  # before_action :authenticate_user!

  # 2023 July test email
  # Action to send a test email
  def send_test_email
    # Replace this with the email address where you want to receive the test email.
    test_email = 'masonev@gmail.com'  # Change this to the desired test email address

    # Create a test user with the email address provided above.
    test_user = User.new(email: test_email)
    skip_authorization
    # Send the welcome email to the test user
    UserMailer.welcome_email(test_user).deliver_now

    # Redirect back to the page you want to display after sending the test email.
    redirect_to root_path, notice: 'Test email sent successfully!'
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end
  
  # 2021 added - define what allow to edit in permit 
  def user_params
    params.require(:user).permit(:email, :preference, :photo, :first_name, :last_name)
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

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        # UserMailer.with(user: @user).welcome_email.deliver_later
        UserMailer.with(user: @user).welcome_email.deliver_now

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
