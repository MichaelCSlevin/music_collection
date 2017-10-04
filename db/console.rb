require("pry")
require_relative("../models/albums")
require_relative("../models/artists")

artist1 = Artist.new({ name => "CSS"})
artist2 = Artist.new({ name => "Rammstein"})
artist3 = Artist.new({ name => "KMFDM"})

album1 = Album.new({ title => "Donkey", genre = "Electropop "})
album2 = Album.new({ title => "Rosenrot", genre = "Metal"})
album3 = Album.new({ title => "Hell Yeah", genre = "EBM"})
