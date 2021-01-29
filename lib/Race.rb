class Race
    attr_accessor :name, :health, :mana, :HP_pots, :MP_pots, :happiness, :evilness   

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


end 

# if gets.strip = yes, new instance of game
#all puts and gets in main CLI file 