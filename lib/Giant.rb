
class Giant < Race 

    def initialize
        super 
        self.health = 100
        @mana = 20
        @evilness = 3
        @happiness = 6
    end 
    
    def health= (health)
        @health = health.clamp(0,100)
    end 

    def mana= (mana)
        @mana = mana.clamp(0,20)
    end 

    def set_of_attacks
        "Please choose an attack (1-3): \n
        1. Whack-A-Mole (Does 5 damage. Consumes 1 Mana.) \n
        2. Whack-A-Lot (Does 8 damage. Consumes 2 Mana.) \n
        3. Whack-Like-Crazy (Does 11 damage. Consumes 3 Mana.) \n"
    end 

    def first_attack
        5
    end 

    def second_attack
        8
    end 

    def third_attack
        11
    end 

    def first_mana
        1
    end 

    def second_mana
        2
    end 

    def third_mana
        3
    end 

end 

# polly = Giant.new("Polly")
