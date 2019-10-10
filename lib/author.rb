 require 'pry'
 class Author
  attr_accessor :name, :title

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def title
    Song.all.select{|song|song.artist == self }
  end
end
  
  def add_song(song)
    song.artist = self
  end
  ## has a relationship with Artist
  #<Song:0x00007fd2b48d2078 @artist=#<Artist:0x00007fd2b48d2168 @name="Adele">, @name="Hello">

  # doesn't have a relationship with Artist
  #<Song:0x00007fe94d22a158 @name="Hello">

   #<Artist:0x00007fe94d22a248 @name="Adele">
  def add_song_by_name(song)
    new_song = Song.new(song)
    # @songs << new_song
    # new_song.artist = self

    add_song(new_song)
  end

  def self.song_count
    # binding.pry
    Song.all.count 
    # Song.all.length 
  end

end