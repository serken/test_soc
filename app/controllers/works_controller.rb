class WorksController < ApplicationController
  def index
  end

  def take_a_job
    return if current_work

    Work.create(character_id: current_character.id)
    current_character.update_attributes(money_update: Time.now.utc)
    redirect_to action: :index
  end

  def receive_money
    current_work.get_money
    redirect_to action: :index
  end

  def level_up_work
    current_work.level_up_work
    redirect_to action: :index
  end
end
