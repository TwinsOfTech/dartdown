class GamesController < ApplicationController
  respond_to :html, :json

  def new
    @game = Game.new
    respond_with @game
  end

end
