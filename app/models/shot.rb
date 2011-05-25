class Shot
  include DataMapper::Resource

  property :id, Serial
  property :amount, Integer, :required => true
  property :game_team_id, Integer, :required => true
  property :created_at, DateTime
  property :updated_at, DateTime

  belongs_to :game_team

end
