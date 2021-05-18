require "nokogiri"
require "open-uri"

require_relative "./game.rb"


class Scraper

    def get_page
        html = "https://www.businessinsider.com/best-video-games-metacritic-2017-11"
        doc = Nokogiri::HTML(URI.open(html))
        doc.search("strong").remove

        doc.css(".slide").each do |site|
            game = Game.new
            game.title = site.css("h2").text
            game.critic = site.css("p")[0].text
            game.user = site.css("p")[1].text
            game.description = site.css("p")[2, 1].text
        end   
    end



    def get_games
        self.get_page.css("site")
    end

    def make_games
        self.get_games.each do |site|
            game.title = site.css("h2").text
            game.critic = site.css("p")[0].text
            game.user = site.css("p")[1].text
            game.description = site.css("p")[2, 1].text
        end
    end

    def print_games
        self.make_games
        Game.all.each do |game|
            if game.title && game.title != ""
                puts "#{game.title}"
                puts "---------------------------------"
                puts "     Critic review:#{game.critic}"
                puts "     User review:#{game.user}"
                puts ""
           end
        end
    end
end