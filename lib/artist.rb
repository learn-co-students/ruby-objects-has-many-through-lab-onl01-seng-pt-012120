class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  @@all = []
  
  def self.all 
    @@all
  end
  
  def new_song(song, genre)
    a = Song.new(song, self, genre)
  end
  
  def songs 
    Song.all.select {|x| x.artist == self}
  end
  
  def genres 
    a = self.songs 
    a.collect do |x|
      x.genre
    end
  end
  
end