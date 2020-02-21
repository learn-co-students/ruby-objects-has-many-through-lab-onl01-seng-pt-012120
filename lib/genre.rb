class Genre 
  attr_accessor :name 
  
    @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
end
  
 def self.all 
    @@all 
end 

def songs 
  Song.all {|songs| songs.genre == self}
end 
 
def artists 
  self.songs.map {|song| song.artist}
end 


end 