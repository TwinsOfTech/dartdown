class GamesController < ApplicationController
  respond_to :html, :json

  def show
    @game = get(params[:id])
    respond_with @game
  end

  def new
    @game = Game.new
    respond_with @game
  end

  def create
    if params[:teams].reject{|e| e.blank?}.blank?
      @game = Game.new
      flash.now[:error] = 'Need some team names'
      render :new
    else
      @game = Game.new(params[:game])
      if @game.save
        params[:teams].each do |team|
          tteam = Team.first_or_create(:name => team.strip)
          GameTeam.create(:team_id => tteam.id, :game_id => @game.id)
        end
        redirect_to game_path(@game)
      else
        flash.now[:error] = @game.errors.full_messages.join('<br />')
        render :new
      end
    end
  end

  private

  def get(id)
    Game.get(id.to_i)
  end

end
