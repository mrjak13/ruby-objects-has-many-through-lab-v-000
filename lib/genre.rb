class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
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

  end

  def artists

  end

end
