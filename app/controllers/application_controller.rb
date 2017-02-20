class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :update_money, if: :user_signed_in?

  def user_signed_in?
    current_user.present?
  end
  helper_method :user_signed_in?

  private
  def current_user
    @current_user ||= User.find(session['user_id']) if session['user_id']
  end
  helper_method :current_user

  def current_character
    @current_character ||= current_user.character
  end
  helper_method :current_character

  def current_work
    @current_work ||= current_character.work
  end
  helper_method :current_work

  def update_money
    current_character.update_money
  end
end
