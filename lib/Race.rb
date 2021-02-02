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
        self.player.health += 10
        self.hp_pots -= 1  
    end 

    def drink_mana_potion
        self.player.mana += 10
        self.mp_pots -= 1
    end 

    def sing_a_song 
        "Oh...okay. You want to sing a song. Interesting choice. \n
        Do you think you're at a karaoke date with the Monster or something?"
    end 

    def yo_yo_trick 
        "You decided to show the Monster your mediocre yo-yo tricks... Why?"
    end 

    def lullaby
        "You sang: 'Hush, little baby don't say a word. \n
        Papa's gonna buy you a mocking word.' \n
        ...
        This is so embarrassing! \n
        I can't believe you decided to sing 'Hush Little Baby' to this Monster!"
    end 

    def bake_a_cake
        "You said: 'Let's bake a cake together!' \n
        D-D-Did you just suggest baking a cake with the Monster?"
    end 

    def coffee_date 
        "You said: 'Do you think we could stop by MoonBucks and grab coffee tomorrow?' \n
        Now why would a Monster drink coffee with you?"
    end 

    def shopping
        "You said: 'Let's go shopping! I heard there will be free samples at the mall!' \n
        Do you have a crush on the Monster...?"
    end 

    def movie_date 
        "You said: 'The new Mudzilla movie is coming out soon! Would you like to go?'\n
        Do you even know a movie theater that allows Monsters????"
    end 

    def be_friends 
        a = rand(7)
        if a == 0
            sing_a_song
        elsif a == 1
            yo_yo_trick
        elsif a == 2
            lullaby
        elsif a == 3
            bake_a_cake
        elsif a == 4
            coffee_date
        elsif a == 5
            shopping
        elsif a == 6
            movie_date
        end 
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