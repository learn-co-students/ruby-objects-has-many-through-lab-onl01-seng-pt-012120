class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end
  
  def songs
    # iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
    Song.all.select { |song| song.artist == self }  
  end
  
  def genres
    #iterates over that artist's songs and collects the genre of each song.
    # Genre.all.find {|genre| genre.artist == self}
    self.songs.map { |song| song.genre }
  end
  
end