class Karen
    attr_accessor :health, :name  

    def initialize
        self.health = 55
        self.name_set
    end

    def health=(health)
        @health = health.clamp(0, 55)
    end 

    def name_set
        num = rand(7)
        if num == 0
            self.name = "Joe-Le-An the Keh-Rhan"
        elsif num == 1
            self.name = "Op-Al the Keh-Rhan"
        elsif num == 2
            self.name = "DeBo-Ra-Ah-Ah the Keh-Rhan"
        elsif num == 3
            self.name = "Mar-Ga-Ret the Keh-Rhan"
        elsif num == 4
            self.name = "Whey-Le-E the Keh-Rhan"
        elsif num == 5
            self.name = "Hay-Le-E the Keh-Rhan" 
        else
            self.name = "Nahn-See the Keh-Rhan"
        end 
    end 

    def battle_cry
        "#{self.name} says: 'AHHHHHHHHHHHHHHHHHHHH!!!!! OUTSIDER!!!!!!'"
    end 

    def death_cry
        "#{self.name} says: 'I *WILL* SPEAK TO YOUR MANAGER ONE DAY!!! JUST YOU WAIT!'\n"
    end 

    def reply 
        a = rand(9)
        if a == 0
            "#{self.name} says: 'I *NEED* TO SPEAK TO YOUR MANAGER!!!!'\n"
        elsif a == 1
            "#{self.name} says: 'I AM ALWAYS RIGHT!'\n"
        elsif a == 2
            "#{self.name} says: 'NUH-UH! NUH! UH!'\n"
        elsif a == 3
            "#{self.name} says: 'DON'T EVEN DARE TO TOUCH ME!'\n"
        elsif a == 4
            "#{self.name} says: 'I'M CALLING THE POLICE!'\n"
        elsif a == 5
            "#{self.name} says: 'I FEEL SO ATTACKED RIGHT NOW!!!!'\n"
        elsif a == 6
            "#{self.name} says: 'YOU'RE TOO CLOSE TO ME!!! STOP IT!!!'\n"
        elsif a == 7
            "#{self.name} says: 'I HAVE MY RIGHTS AS A KEH-RHAN!'\n"
        else
            "#{self.name} says: 'DO YOU EVEN KNOW WHO I AM?'\n"
        end 
    end 

    def attack
        a = rand(4)
        if a == 0
            4
        elsif a == 1
            5
        elsif a == 2
            7
        else
            9
        end 
    end 


end 


