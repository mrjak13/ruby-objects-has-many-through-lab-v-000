require 'pry'
class Artist
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    name = Song.new(name, self, genre)
    name.artist == self
  end

  def songs
    # binding.pry
    Song.all.select {|song| song.artist == self}
  end


end
