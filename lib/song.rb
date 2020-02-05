require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name, artist)
    @name = name
    self.save
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

  def self.create(name)
    Song.new(name)
    # binding.pry
  end
end
