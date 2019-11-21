#creates Artist class
class Artist

    attr_accessor :name
    attr_writer :song

    #a constructor that takes name as an argument
    def initialize (name)
        @name = name
    end

    def songs 
       #reference the song class @@all array/ class variable and filter each song in the array so that it matches which songs the artist HAS
        Song.all.filter {|song| song.artist == self}
    end

    def add_song(song)
        # @song = self.song
        song.artist= self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        add_song(new_song)
        
    end

    def self.song_count
        #refence the song class @@all array, find out the length which is equal to the number of songs
        Song.all.length
    end

end