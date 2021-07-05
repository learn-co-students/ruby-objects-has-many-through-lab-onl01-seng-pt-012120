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
    Song.all.select {|x| x.genre == self}
  end
  
  def artists
    a = self.songs 
    a.collect do |x|
      x.artist
    end
  end
  
end