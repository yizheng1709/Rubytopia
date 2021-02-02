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
            self.name = "Wrathful the Fake Santa"
        elsif num == 1
            self.name = "Bitter the Fake Santa"
        elsif num == 2
            self.name = "Furious the Fake Santa"
        elsif num == 3
            self.name = "Rage the Fake Santa"
        elsif num == 4
            self.name = "Resentful the Fake Santa"
        elsif num == 5
            self.name = "Outrage the Fake Santa" 
        else
            self.name = "Offended the Fake Santa"
        end 
    end 

    def battle_cry
        "#{self.name} says: 'Sad Holidays for you!'"
    end 

    def death_cry
        "#{self.name} says: You'll get getting coal for Christmas!!!!"
    end 

    def reply 
        a = rand(9)
        if a == 0
            "#{self.name} says: 'Ha Ha Ha. Terrible Christmas!'\n"
        elsif a == 1
            "#{self.name} says: 'Hu Hu Hu. Crazy Christmas!'\n"
        elsif a == 2
            "#{self.name} says: 'He He He. No Christmas!'\n"
        elsif a == 3
            "#{self.name} says: 'Hoo Hoo Hoo. Irritable Christmas!'\n"
        elsif a == 4
            "#{self.name} says: 'You are on the naughty list!'\n"
        elsif a == 5
            "#{self.name} says: 'I swear I will eat all of your cookies!'\n"
        elsif a == 6
            "#{self.name} says: 'Nobody likes you!'\n"
        elsif a == 7
            "#{self.name} says: 'You won't be getting a PS5 this Christmas!'\n"
        else
            "#{self.name} says: 'You are no longer my favorite!'\n"
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
        else
            6
        end 
    end 


end 
