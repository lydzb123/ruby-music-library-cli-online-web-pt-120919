require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    self.save
    @songs = []
    return self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(artist_name)
    Artist.new(artist_name)
  end


  def add_song(song_name)
    if song_name.artist == nil
      song_name.artist = self
    end
    self.songs << song_name
  end


end
