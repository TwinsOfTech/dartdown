class GameTeam
  include DataMapper::Resource

  property :id, Serial
  property :game_id, Integer, :required => true, :index => [:game_id_team_id, :game_id]
  property :team_id, Integer, :required => true, :index => [:game_id_team_id, :team_id]
  property :created_at, DateTime
  property :updated_at, DateTime

  belongs_to :game
  belongs_to :team
  has n, :shots


end
