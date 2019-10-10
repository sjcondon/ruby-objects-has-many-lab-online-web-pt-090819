def Song
  attr_accessor :artist, :name
    @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if !self.artist
      return nil
    else
      self.artist.name
  end
  
end
end

