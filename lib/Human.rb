require_relative 'Race'
class Human < Race 

    def initialize
        super
        @health = 80
        @mana = 40
        @evilness = 2
        @happiness = 4
    end 

    def health= (health)
        @health = health.clamp(0,80)
    end 

    def mana= (mana)
        @mana = mana.clamp(0,40)
    end 

    def set_of_attacks
        "Please choose an attack (1-3): \n
        1. Punch (Does 2 damage. Costs 0 Mana.) \n
        2. Call the Manager (Does 6 damange. Costs 3 Mana.) \n
        3. Morning Breath (Does 12 damage. Costs 7 Mana.) \n"
    end 

    def first_attack
        2
    end 

    def second_attack
        6
    end 

    def third_attack
        12
    end 

    def first_mana
        0
    end 

    def second_mana
        3
    end 

    def third_mana
        7
    end 
   
end 

