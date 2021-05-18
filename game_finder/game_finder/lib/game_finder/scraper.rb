require 'nokogiri'
require 'open-uri'
 
 
class Scraper
 
  def get_page
      doc = Nokogiri::HTML(open("https://www.gamesradar.com/video-game-release-dates/"))
  end
 
end
 
Scraper.new.get_page