require_relative "./Race"
class Elf < Race 

    def initialize(name)
        super
        @health = 50
        @mana = 100
        @evil = 1
        @happiness = 5
    end 

    def set_of_attacks 
        "1. Arcane Arrows (Does 5 damage. Consumes 5 Mana.)\n
        2. Triple Shot (Does 11 damage. Consumes 10 Mana.) \n
        3. Single Shot (Does 3 damage. Consumes 1 Mana.) \n"
    end 
   

end 

# eliza = Elf.new("Eliza")