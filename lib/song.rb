require "pry"

class Song

    attr_accessor :name
    attr_writer :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # a getter method to get the artist the song belongs to 
    def artist
        @artist
    end

    def artist_name

        if !self.artist 
            nil
        else
           @artist.name
        end
        
        # if instance of song does not have an artist 
        #     return nil
        # else
        #     if the instance of song does have an artist return the artist name 
        # end


    end

    #binding.pry

end