require_relative "./Race"
class Human < Race 

    def initialize(name)
        super
        @health = 80
        @mana = 40
        @evilness = 2
        @happiness = 5
    end 

   
end 

# anita = Human.new("Anita")
