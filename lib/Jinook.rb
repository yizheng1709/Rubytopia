require_relative 'Race'
class Jinook < Race 

    def initialize
        super
        @health = 90
        @mana = 30
        @evilness = 1
        @happiness = 5
    end 
    
    def health= (health)
        @health = health.clamp(0,90)
    end 

    def mana= (mana)
        @mana = mana.clamp(0,30)
    end 

    def set_of_attacks 
        "Please choose an attack (1-3): \n
        1. Praise (Does 3 damage. Consumes 1 Mana.)\n
        2. Deep Knowledge (Does 8 damage. Consumes 3 Mana.) \n
        3. Perfection (Does 12 damage. Consumes 5 Mana.) \n"
    end 

    def first_attack 
        3
    end 

    def second_attack
        8 
    end 

    def third_attack
        12
    end 
   
    def first_mana
        1
    end 

    def second_mana
        3
    end 

    def third_mana
        5
    end 

end 