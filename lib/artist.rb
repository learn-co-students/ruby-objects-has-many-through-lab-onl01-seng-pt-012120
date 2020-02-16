class Artist
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
    return Song.all.select{|song| song.artist == self}
  end
  
  def new_song(name, genre)
    return Song.new(name, self, genre)
  end
  
  def genres()
    return self.songs.collect {|song| song.genre}
  end
end
    