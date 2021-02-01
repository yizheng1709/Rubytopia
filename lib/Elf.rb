require_relative "./Race"
class Elf < Race 

    def initialize(name)
        super
        @health = 60
        @mana = 80
        @evil = 1
        @happiness = 5
    end 

    def set_of_attacks 
        "Please choose an attack (1-3): \n
        1. Single Shot (Does 2 damage. Consumes 1 Mana.)\n
        2. Triple Shots (Does 8 damage. Consumes 5 Mana.) \n
        3. Arcane Arrows (Does 13 damage. Consumes 8 Mana.) \n"
    end 

    def first_attack 
        2
    end 

    def second_attack
        8 
    end 

    def third_attack
        13
    end 
   
    def first_mana
        1
    end 

    def second_mana
        5
    end 

    def third_mana
        8
    end 

end 

# eliza = Elf.new("Eliza")