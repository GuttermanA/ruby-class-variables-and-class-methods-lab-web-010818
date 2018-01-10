class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_hash = {}
  @@artist_hash = {}

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre

    @name = name
    @artist = artist
    @genre = genre

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
    @@genres.each do |genre|
      @@genre_hash[genre] = @@genres.count(genre)
    end

    @@genre_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_hash[artist] = @@artists.count(artist)
    end

    @@artist_hash
  end


end
