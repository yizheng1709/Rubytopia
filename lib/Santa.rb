class Santa
    attr_accessor :health, :name  

    def initialize
        self.health = 40
        self.name_set
    end

    def health=(health)
        @health = health.clamp(0, 540)
    end 

    def name_set
        num = rand(7)
        if num == 0
            @name = "Wrathful the Fake Santa"
        elsif num == 1
            @name = "Bitter the Fake Santa"
        elsif num == 2
            @name = "Furious the Fake Santa"
        elsif num == 3
            @name = "Rage the Fake Santa"
        elsif num == 4
            @name = "Resentful the Fake Santa"
        elsif num == 5
            @name = "Outrage the Fake Santa" 
        elsif num == 6
            @name = "Offended the Fake Santa"
        end 
    end 

    def battle_cry
        "Sad Holidays for you!"
    end 

    def death_cry
        "#{@name} says: You'll get getting coal for Christmas!!!!"
    end 

    def reply 
        "#{@name} says: \n"
        a = rand()
        if a == 0
            "'Ha Ha Ha. Terrible Christmas!'"
        elsif a == 1
            "'Hu Hu Hu. Crazy Christmas!'"
        elsif a == 2
            "'He He He. No Christmas!'"
        elsif a == 3
            "'Hoo Hoo Hoo. Irritable Christmas!'"
        elsif a == 4
            "'You are on the naughty list!'"
        elsif a == 5
            "'I swear I will eat all of your cookies!'"
        elsif a == 6
            "'Nobody likes you!'"
        elsif a == 7
            "'You won't be getting a PS5 this Christmas!'"
        elsif a == 8
            "'You are no longer my favorite!"
        end 
    end 

    def attack
        a = rand(4)
        if a == 0
            2
        elsif a == 1
            3
        elsif a == 2
            4
        elsif a == 3
            6
        end 
    end 


end 
