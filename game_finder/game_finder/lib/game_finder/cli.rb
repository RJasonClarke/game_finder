class GameFinder::CLI

    def call
        menu
    end

    def list_games
        puts "Upcoming game releases:"
        puts #game releases
    end

    def menu
        puts "Enter game title or platform to see upcoming game releases.\nPress ENTER to exit."
        input = gets.strip.downcase

        while input == nil
            break
        end
    end

end