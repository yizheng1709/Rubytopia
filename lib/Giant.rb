require_relative "./Race"
class Giant < Race 
    attr_accessor :health, :mana  
    attr_reader :name, :race, :evilness, :happiness

    def initialize(name)
       super 
        @health = 120
        @mana = 0
        @evilness = 2
        @happiness = 8
        

        puts "     💎 Welcome to Rubytopia, #{@name}! 💎\n
        You've chosen to be part of the Giant Race. \n
        As a Giant, you have incredible stamina, \n
        but you have no idea what mana is or how to channel it. \n
        However, that does not stop you from being a happy Giant. \n

        HP: #{health} \n
        MP: #{mana} \n"
    end 

    def evilness= (evilness)
        @evilness = evilness.clamp(0,10)
    end 

    def happiness= (happiness)
        @happiness = happiness.clamp(0,10)
    end 

    def take_damage
        #monster should invoke this method 
    end 

end 

# polly = Giant.new("Polly")
