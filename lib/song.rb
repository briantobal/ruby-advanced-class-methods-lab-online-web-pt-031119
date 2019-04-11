class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    new_song = self.new 
    new_song.save
    new_song
  end 
  
  def self.new_by_name(song_name)
    new_song = self.new 
    new_song.name = song_name 
    new_song
  end 

  def self.create_by_name(song_name)
    new_song = self.new 
    new_song.name = song_name 
    new_song.save
    new_song
  end 

  def self.find_by_name(name)
    @@all.detect do |song|
      if song.name == name 
        return song 
      else 
        false 
      end 
    end
  end 
  
 # def self.find_or_create_by_name(name)
  #  if self.find_by_name(name)
  #  else                          
  #    Song.create_by_name(name)
  #  end 
  #end 
    
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end

  self.alphabetical 
    self.name
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
