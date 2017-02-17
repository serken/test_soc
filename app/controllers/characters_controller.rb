class CharactersController < ApplicationController

  def show
    @character = Character.first
  end
end
