require 'pry'
class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
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
