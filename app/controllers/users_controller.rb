class UsersController < ApplicationController
  def new
    @user = User.new
    @languages = User::LANGUAGES
    respond_to do |format|
      if params[:locale].present?
        format.js
      else
        format.html
      end
    end
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.js { redirect_to root_path, notice: 'Your message has been sent successfully' }
      else
        format.js
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :message)
  end
end
