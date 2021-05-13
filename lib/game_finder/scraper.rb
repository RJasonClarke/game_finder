require "nokogiri"
require "open-uri"

class GameFinder::Scraper

    def get_page
        doc = Nokogiri::HTML(open("https://www.gamestop.com/upcoming-video-games"))
    end

end