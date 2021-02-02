require_relative 'Race'
class Vampire < Race 

    def initialize
        super
        @health = 70
        @mana = 30
        @evilness = 2
        @happiness = 4
    end 
    
    def health= (health)
        @health = health.clamp(0,70)
    end 

    def mana= (mana)
        @mana = mana.clamp(0,30)
    end 

    def set_of_attacks 
        "Please choose an attack (1-3): \n
        1. Sparkle (Does 4 damage. Consumes 1 Mana.)\n
        2. Flex Your Arm Muscles (Does 6 damage. Consumes 2 Mana.) \n
        3. Be Sexy (Does 11 damage. Consumes 4 Mana.) \n"
    end 

    def first_attack 
        4
    end 

    def second_attack
        6 
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
        4
    end 

end 