class Artist

  attr_accessor :name
  attr_reader :id

  def initialize (artist_hash)
    @id = artist_hash['id'].to_i if artist_hash['id']
    @name = artist_hash['artist_name']
  end
