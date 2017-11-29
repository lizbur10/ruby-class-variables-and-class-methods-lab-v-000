require 'pry'
class Song
  @@count = 0
  @@genre_count = 0
  @@artist_count = 0
  @@artists = []
  @@genres = []
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name

    @artist = artist
    @@artists << artist
#    !@@artists.include?(artist) { @@artists << artist }

    @genre = genre
    @@genres << genre
#    !@@genres.include?(genre) { @@genres << genre }
    # binding.pry
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count = {}
    @@genres.each do | genre |
      if !@@genre_count.include?(genre)
        @@genre_count[genre] = 1
      else
        @@genre_count[genre] += 1
      end
    end
    @@genre_count
  end
end

hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
