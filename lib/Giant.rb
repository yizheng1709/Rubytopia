require_relative "./Race"
class Giant < Race 

    def initialize(name)
       super 
        @health = 120
        @mana = 0
        @evilness = 2
    end 

    def set_of_attacks
        "Whack-A-Mole (Does 5 damage.) \n
        Whack-A-Lot (Does 8 damage.) \n
        Whack-Like-Crazy (Does 11 damage.) \n"
    end 


end 

# polly = Giant.new("Polly")
