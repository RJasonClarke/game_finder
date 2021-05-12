class GameFinder::CLI

    def call
        puts "-----------------------"
        puts "Welcome to Game Finder!"
        puts "-----------------------"     
        menu
    end

    def list_games
        
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter game title or type exit"
            input = gets.chomp.downcase
            case input
            when "zelda"
                puts "\n--------\nZelda\n--------\nN64\n--------\nOctober 14 1994\n--------"
            end
        end
    end

    def goodbye
        puts "Thank you for using Game Finder!"
    end

end