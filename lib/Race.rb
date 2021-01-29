class Race
    attr_accessor :health, :mana, :HP_pots, :MP_pots, :evilness, :friends_made    

    def initialize(name)
        @name = name 
        @HP_pots = 10
        @MP_pots = 10
        @friends_made = [] 
    end 

    def evilness= (evilness)
        @evilness = evilness.clamp(0,10)
    end 

    def drink_health_potion #can be done once per turn
        self.player_health += 10 
    end 

    def drink_mana_potion
        self.player_mana += 10
    end 

    def do_nothing 
        "Oh...okay. You chose to do nothing. Interesting choice. \n
        Do you think you could be friends with the monster or something?"
    end 

    def increase_evilness
        self.evilness = @evilness + 2
    end 

    def friends_made_count
        @friends_made.count 
    end 

    def death?
        self.health == 0
    end 

end 

# if gets.strip = yes, new instance of game
#all puts and gets in main CLI file 