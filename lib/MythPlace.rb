require_relative 'Scraper'

class MythPlace
    attr_accessor :name, :description 
    @@all = []
    def initialize
        @@all << self 
    end 

    def self.all
        @@all
    end 

    #create a search by name method so that the gets can be used as an argument
end 