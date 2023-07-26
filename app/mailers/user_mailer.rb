class UserMailer < ApplicationMailer
  default from: email_address_with_name('lunchmates2020@gmail.com', 'LunchMates')

  # from chatgpt
  def welcome_email(user)
    # @user = params[:user] # original
    @user = user #chatggpt
    mail(
      to: email_address_with_name(@user.email, @user.first_name),
      subject: 'chat+docu Welcome to My Awesome Site'
    )
    # to: @user.email, subject: 'Chat Welcome to Lunchmates!')
  end

  # from ruby documentation
  def new_registration(user)
    @user = user
    mail(subject: "Docu New User Signup: #{@user.email}")
  end

end
