class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      respond_with('js', root_path, 'notice', 'Your message has been sent successfully')
    else
      respond_with('js')
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :message)
  end
end
