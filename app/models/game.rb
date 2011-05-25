class Game
  include DataMapper::Resource

  property :id, Serial
  property :teams, Integer, :default => 2
  property :start_at, Integer, :default => 101
  property :winning_team_id, Integer, :required => false
  property :created_at, DateTime
  property :updated_at, DateTime

  #has n, :teams


end
