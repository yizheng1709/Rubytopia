require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './MythPlace.rb'

class Scraper 
    attr_accessor :array 
    def get_page 
        Nokogiri::HTML(open("https://artoftravel.tips/mythological-mythical-places/")) 
    end 

    def get_places
       self.get_page.css("ul")[3]
    end 

    def make_mythplace
        self.get_places.children.collect do |listing|
            place = MythPlace.new #add arguments
            place.name = listing.children.children.text.split(": ")[0]
            description = listing.children.children.text.split(": ")[1].downcase.gsub(/^[aA]\s/, "the ")
            description = description.gsub(".","?")
            place.description = description
        end 
    end  
end 


             