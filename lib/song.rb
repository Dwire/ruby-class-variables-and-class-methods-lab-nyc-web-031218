require "pry"

class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
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
    genres_hash = {}

    @@genres.each do |genre|
      if genres_hash.has_key?(genre)
        genres_hash[genre] += 1
      else
        genres_hash[genre] = 1
      end
    end
    genres_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |repeated_name|
      if artist_hash.has_key?(repeated_name)
        artist_hash[repeated_name] += 1
      else
        artist_hash[repeated_name] = 1
      end
    end
    artist_hash
  end

end
