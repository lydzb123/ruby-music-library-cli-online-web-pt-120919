require 'pry'
class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
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
    new_song = Song.new
    self.name = name
    new_song
    return name
    # binding.pry
  end
end
