require 'pry'
class Artist
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    name = Song.new(name, self, genre)
    # name.artist = self
    songs << name
  end

  def songs
    @songs.select {|artist| artist.name == self.name}
  end


end
