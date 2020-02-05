require 'pry'
class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(name, artist = nil)
    @name = name
    self.save
    @artist = Artist.new(artist).name
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

  def self.create(name)
    Song.new(name)
    # binding.pry
  end

  def artist=(artist_name)
    artist.add_song(self)
  end



end
