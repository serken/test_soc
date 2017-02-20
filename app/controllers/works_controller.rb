class WorksController < ApplicationController
  def index
  end

  def take_a_job
    return if @work

    Work.create(character_id: @character.id)
    @character.update_attributes(money_update: Time.now.utc)
    redirect_to action: :index
  end

  def receive_money
    @character.work.get_money
    redirect_to action: :index
  end

  def level_up_work
    @character.work.level_up_work
    redirect_to action: :index
  end
end
