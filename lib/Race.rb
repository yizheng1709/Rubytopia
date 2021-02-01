class Race
    attr_accessor :health, :mana, :hp_pots, :mp_pots, :evilness, 
    :friends_made, :happiness    

    def initialize(name)
        @name = name 
        @hp_pots = 20
        @mp_pots = 15
        @friends_made = [] 
    end 

    def evilness= (evilness)
        @evilness = evilness.clamp(0,10)
    end 

    def happiness= (happiness)
        @happiness = happiness.clamp(0,10)
    end 

    def drink_health_potion #can be done once per turn
        self.player_health += 10
        self.hp_pots -= 1  
    end 

    def drink_mana_potion
        self.player_mana += 10
        self.mp_pots -= 1
    end 

    def sing_a_song 
        "Oh...okay. You chose to sing a song. Interesting choice. \n
        Do you think you're at a karaoke date with the monster or something?"
    end 

    def increase_evilness_by_2
        self.evilness = @evilness + 2
    end 

    def increase_happiness_by_1
        self.happiness = @happiness + 1
    end 

    def decrease_happiness_by_1
        self.happiness = @happiness - 1
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