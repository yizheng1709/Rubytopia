class Human < Race 

    def initialize(name)
        super
        @health = 80
        @mana = 40
        @evilness = 2
        @happiness = 4
    end 

    def set_of_attacks
        "1. Punch (Does 2 damage. Costs 0 Mana.) \n
        2. Call the Manager (Does 6 damange. Costs 4 Mana.) \n
        3. Morning Breath (Does 12 damage. Costs 7 Mana.) \n"
    end 

   
end 

