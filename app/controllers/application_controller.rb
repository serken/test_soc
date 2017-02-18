class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_character

  def character
    @character = Character.find(session['character_id'])
  end

  private
  def set_character
    session['character_id'] ||= Character.first.id
  end
end
