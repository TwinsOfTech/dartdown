class Team
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :length => 50
  property :created_at, DateTime
  property :updated_at, DateTime



end
