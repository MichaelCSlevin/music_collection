class Album

  attr_accessor :title, :genre
  attr_reader :id

  def initialize (album_hash)
    @id = album_hash['id'].to_i if album_hash['id']
    @title = album_hash['album_name']
    @genre = album_hash['album_genre']
  end

end
