class ShotsController < ApplicationController
  respond_to :html, :js, :json

  def create
    @shot = Shot.new(params[:shot])
    @shot.game_team_id = params[:game_team_id].to_i
    if @shot.save
      respond_with @shot
    else
    end
  end

  private

  def get(id)
    Shot.get(id.to_i)
  end

end
