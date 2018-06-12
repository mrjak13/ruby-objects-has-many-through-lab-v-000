class Genre
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << name
    @songs = []
  end

  def self.all
    @@all    
  end

  def new_song(name, artist)
    name = Song.new(name, artist, self)
    songs << name
    
  end

  def songs
    @songs    
  end
  
end
