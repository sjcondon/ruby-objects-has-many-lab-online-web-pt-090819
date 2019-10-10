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
    Post.all.select{|title|title.artist == self }
  end
end
  
  def add_title(title)
    title.author = self
  end
  ## has a relationship with Artist
  #<Song:0x00007fd2b48d2078 @artist=#<Artist:0x00007fd2b48d2168 @name="Adele">, @name="Hello">

  # doesn't have a relationship with Artist
  #<Song:0x00007fe94d22a158 @name="Hello">

   #<Artist:0x00007fe94d22a248 @name="Adele">
  def add_title_by_name(title)
    new_title = Post.new(title)
    # @songs << new_song
    # new_song.artist = self

    add_title(new_title)
  end

  def self.title_count
    # binding.pry
    Post.all.count 
    # Song.all.length 
  end

end