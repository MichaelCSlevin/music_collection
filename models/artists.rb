class Artist

  attr_accessor :name
  attr_reader :id

  def initialize (artist_hash)
    @id = artist_hash['id'].to_i if artist_hash['id']
    @name = artist_hash['artist_name']
  end

  def save ()
    sql = "INSERT INTO artists (artist_name)
    VALUES

    $1, $2
  )
  RETURNING id;
  "
  values = [@name]
  result = SQLRunner.run(sql, "save_artist", values)
  @id = result[0]['id'].to_i()
  end

  def self.list_all()
    sql = "SELECT * FROM artists"
    values = []
    artists = SqlRunner.run(sql, "find_all_artists", values)
    return artists.map { |artist| Artist.new(artist) }
  end


end
