class GameFinder::Game

    attr_accessor :title, :platform, :date

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @all
    end

    def self_reset_all
        @@all.clear
    end

end