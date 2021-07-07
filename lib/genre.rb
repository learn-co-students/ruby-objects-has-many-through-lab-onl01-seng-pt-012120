require 'pry'
class Genre
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def songs
   Song.all { |song| song.genre }
  end
  
  def artists
  self.songs.map {|song| song.artist}
  end
  
  
end
