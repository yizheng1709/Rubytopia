class Race
    attr_accessor :health, :mana, :HP_pots, :MP_pots, :evilness   

    def initialize(name)
        @name = name 
        @HP_pots = 10
        @MP_pots = 10 
    end 

    def drink_health_potion #can be done once per turn
        self.player_health += 10 
    end 

    def drink_mana_potion
        self.player_mana += 10
    end 

    def evilness= (evilness)
        @evilness = evilness.clamp(0,10)
    end 


end 

# if gets.strip = yes, new instance of game
#all puts and gets in main CLI file 