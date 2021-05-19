require_relative "./game.rb"

class CLI

    def call
        puts ""
        puts "-----------------------\nWelcome to Game Finder!\n-----------------------"
        puts ""    
        menu
    end

    def list_all_games
        puts "------------------------------------------------"
        puts "BEST GAMES OF ALL TIME BASED ON METACRITIC SCORE"
        puts "------------------------------------------------"
        Scraper.new.print_games
        puts ""
        more_info
        menu
    end

    def menu
        puts "Press ENTER to see all games or type EXIT"
        input = gets.chomp.downcase
        if input == ""
            list_all_games
        else input == "exit"
            goodbye
        end
    end

    def more_info
        puts "Enter a games rank for more info"
        rank = gets.strip.to_i - 1
        if rank > 50
            puts ""
            puts "Invalid number"
            puts ""
            menu
        elsif rank == ""
            list_all_games
        end

        game = Game.all[rank]
        puts ""
        puts "#{game.title}"
        puts "---------------------------------"
        puts "#{game.description}"
        puts ""
    end

    def goodbye
        puts ""
        puts "Thank you for using Game Finder!"
        exit!
    end

end

