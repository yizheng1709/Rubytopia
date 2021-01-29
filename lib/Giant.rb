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
