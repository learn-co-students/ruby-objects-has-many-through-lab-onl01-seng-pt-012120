class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(title, genre)
    new_song = Song.new(title, self, genre)
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    songs.collect {|song| song.genre}
  end
  
end