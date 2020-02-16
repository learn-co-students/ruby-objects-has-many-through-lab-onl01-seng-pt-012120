class Genre
  @@all = []
  attr_accessor(:name)
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all()
    return @@all
  end
  
  def songs()
    return Song.all.select{|song| song.genre == self}
  end
  
  def artists()
    return self.songs.collect{|song| song.artist}
  end
end
  