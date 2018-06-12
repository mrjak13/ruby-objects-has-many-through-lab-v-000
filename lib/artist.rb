require 'pry'
class Artist
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << name
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name)
    name = Song.new(name, self)
    songs << name
  end

  def songs
    @songs
  end


end
