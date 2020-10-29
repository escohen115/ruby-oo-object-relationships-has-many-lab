class Song

    @@all = []

    attr_accessor :artist, :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            return self.artist.name
        else
            nil
        end
        
    end

end