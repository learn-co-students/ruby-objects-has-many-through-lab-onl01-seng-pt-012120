require "pry"

class Song
  
  attr_accessor :name, :artist, :genre

  @@all = []
  
  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @genre = genre
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end



end