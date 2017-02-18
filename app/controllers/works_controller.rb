class WorksController < ApplicationController
  def index
    @character = character
  end

  def take_a_job
    Work.create(character_id: character.id)
    redirect_to action: :index
  end

  def receive_money
    character.work.get_money
    redirect_to action: :index
  end

  def level_up_work
    character.work.level_up_work
    redirect_to action: :index
  end
end
