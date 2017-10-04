class Album

  attr_accessor :title, :genre
  attr_reader :id

  def initialize (album_hash)
    @id = album_hash['id'].to_i if album_hash['id']
    @title = album_hash['album_name']
    @genre = album_hash['album_genre']
  end

  def save ()
    sql = "INSERT INTO albums
    (
      album_name,
      album_genre
    ) VALUES
    (
      $1, $2, $3
    )
    RETURNING id;"
    values = [@title, @genre]
    @id = result[0]['id'].to_i()
  end

  def self.all()
      sql = "SELECT * FROM albums"
      values = []
      albums = SqlRunner.run(sql, "find_all_albums", values)
      return albums.map { |album| Album.new(album) }
    end

    def get_album_artist
      sql = "SELECT * FROM artists WHERE id = $1;"
      values = [@artist_id]
      results = SQLRunner.run(sql, "get_album_artist", values)
      artist = results[0]
      return Artist.new(artist)
    end
end
