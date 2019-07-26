class GameController < ApplicationController

  def index
    @card = Card.all
    render json: @card
  end


end
