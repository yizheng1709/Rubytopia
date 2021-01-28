require_relative "./Race"
class Human < Race 
    attr_accessor :health, :mana
    attr_reader :name, :race, :happiness, :evilness

    def initialize(name)
        super
        @health = 80
        @mana = 40
        @evilness = 2
        @happiness = 5
    end 

    def evilness= (evilness)
        @evilness = evilness.clamp(0,10)
    end 

    def happiness= (happiness)
        @happiness = happiness.clamp(0,10)
    end 
end 

# anita = Human.new("Anita")
