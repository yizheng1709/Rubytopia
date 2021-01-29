require_relative "./Race"
class Giant < Race 

    def initialize(name)
       super 
        @health = 120
        @mana = 0
        @evilness = 2
        @happiness = 8
    end 

    def take_damage
        #monster should invoke this method 
    end 

end 

# polly = Giant.new("Polly")
