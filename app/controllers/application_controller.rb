class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_character
  before_action :update_money

  private
  def update_money
    @character.update_money
  end

  def set_character
    session['character_id'] ||= Character.first.id
    @character ||= Character.find(session['character_id'])
    @work = @character.work
  end
end
