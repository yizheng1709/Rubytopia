class Race
    attr_accessor :health, :mana, :hp_pots, :mp_pots, :evilness, 
    :friends_made, :happiness    

    def initialize
        @hp_pots = 25
        @mp_pots = 25
        @friends_made = [] 
    end 

    def evilness= (evilness)
        @evilness = evilness.clamp(0,10)
    end 

    def happiness= (happiness)
        @happiness = happiness.clamp(0,10)
    end 

    def drink_health_potion
        self.health += 10
        self.hp_pots -= 1  
    end 

    def drink_mana_potion
        self.mana += 10
        self.mp_pots -= 1
    end 

    def sing_a_song 
        "\n
        Oh...okay. You want to sing a song. Interesting choice. \n
        Do you think you're at a karaoke date with the Monster or something? \n".colorize(:green)
    end 

    def yo_yo_trick 
        "\n You decided to show the Monster your mediocre yo-yo tricks... Why? \n".colorize(:green)
    end 

    def lullaby
        "\nYou sang: 'Hush, little baby don't say a word. \n
        Papa's gonna buy you a mocking word.' \n
        ... \n
        This is so embarrassing! \n
        I can't believe you decided to sing 'Hush Little Baby' to this Monster! \n".colorize(:green)
    end 

    def bake_a_cake
        "\nYou said: 'Let's bake a cake together!' \n
        D-D-Did you just suggest baking a cake with the Monster?\n".colorize(:green)
    end 

    def coffee_date 
        "\nYou said: 'Do you think we could stop by MoonBucks and grab coffee tomorrow?' \n
        Now why would a Monster drink coffee with you?\n".colorize(:green)
    end 

    def shopping
        "\nYou said: 'Let's go shopping! I heard there will be free samples at the mall!' \n
        Do you have a crush on the Monster...?\n".colorize(:green)
    end 

    def movie_date 
        "\nYou said: 'The new Mudzilla movie is coming out soon! Would you like to go?'\n
        Do you even know a movie theater that allows Monsters????\n".colorize(:green)
    end 

    def amusement_park
        "\nYou said: 'Would you like to go to Eight Flags or Galactical Studios this weekend?' \n
        Do you think the Monster will get charged a special price for its ticket?".colorize(:green)
    end 

    def library
        "\nYou said: 'How about we go to the library and I'll read you some of my favorite stories?' \n
        Maybe the Monster will like comic books...!\n
        ... Yeah, I don't think so.\n".colorize(:green)
    end 

    def yoga_pose
        "\n You want to impress the Monster by striking a yoga pose. \n
        Except, you're not really good at it, so you strained your back. \n
        You are so embarrassing to be around... \n"
    end 

    def be_friends 
        a = rand(10)
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
            amusement_park
        elsif a == 7
            library
        elsif a == 8
            yoga_pose
        else
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

    def check_mana
        self.mana == 0
    end 

    def check_mp_pot
        self.mp_pots == 0
    end 

    def check_hp_pot
        self.hp_pots == 0
    end 

    def death?
        self.health == 0
    end 

end 