class Post 

    attr_accessor :title
    attr_writer :author
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def title
        @title
    end

    def author
        #we want to create the 'belongs to' relationship method that gets the author
        @author
    end

    def author_name
        if !self.author 
            return nil
        else 
            @author.name
        end
    end


end