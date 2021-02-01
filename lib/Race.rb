class Race
    attr_accessor :health, :mana, :HP_pots, :MP_pots, :evilness, 
    :friends_made, :happiness    

    def initialize(name)
        @name = name 
        @HP_pots = 10
        @MP_pots = 10
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
    end 

    def drink_mana_potion
        self.player_mana += 10
    end 

    def takes_damage_from_goblin 
        a = rand(3)
        if a == 0
            self.health -= 2
        elsif a == 1
            self.health -= 3
        elsif a == 2 
            self.health -= 4
        end 
    end 

    def takes_damage_from_dragon 
        a = rand(3)
        if a == 0
            self.health -= 4
        elsif a == 1
            self.health -= 5
        elsif a == 2 
            self.health -= 8
        end 
    end 

    def sing_a_song 
        "Oh...okay. You chose to sing a song. Interesting choice. \n
        Do you think you're at a karaoke date with the monster or something?"
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