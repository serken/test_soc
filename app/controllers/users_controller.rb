class UsersController < ApplicationController
  def index
  end

  def register
    @user = User.new
  end

  def sign_in
  end

  def signed_in
    user = User.where(login: params[:login], password: params[:password]).first
    redirect_to root_path and return unless user

    session['user_id'] = user.id
    redirect_to root_path
  end

  def sign_out
    session['user_id'] = nil
    @current_user = nil
    @current_character = nil
    @current_work = nil
    redirect_to root_path
  end

  def create
    u = User.create(user_params)
    u.create_character(params[:character_name])

    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:login, :password, :email)
  end
end
