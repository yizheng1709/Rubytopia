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
            self.name = "Joe-Le-An"
        elsif num == 1
            self.name = "Op-Al"
        elsif num == 2
            self.name = "DeBo-Ra-Ah-Ah"
        elsif num == 3
            self.name = "Mar-Ga-Ret"
        elsif num == 4
            self.name == "Whey-Le-E"
        elsif num == 5
            self.name == "Hay-Le-E"
        elsif num == 6
            self.name == "Nahn-See"
        end 
    end 

    def battle_cry
        "AHHHHHHHHHHHHHHHHHHHH!!!!! OUTSIDER!!!!!!"
    end 

    def death_cry
        "I *WILL* SPEAK TO YOUR MANAGER ONE DAY!!! JUST YOU WAIT!"
    end 

    def reply 
        "#{self.name} the Keh-Rhan says: \n"
        a = rand()
        if a == 0
            "'I *NEED* TO SPEAK TO YOUR MANAGER!!!!'"
        elsif a == 1
            "'I AM ALWAYS RIGHT!'"
        elsif a == 2
            "'NUH-UH! NUH! UH!'"
        elsif a == 3
            "'DON'T EVEN DARE TO TOUCH ME!'"
        elsif a == 4
            "'I'M CALLING THE POLICE!'"
        elsif a == 5
            "'I FEEL SO ATTACKED RIGHT NOW!!!!'"
        elsif a == 6
            "'YOU'RE TOO CLOSE TO ME!!! STOP IT!!!'"
        elsif a == 7
            "'I HAVE MY RIGHTS AS A KEH-RHAN!'"
        elsif a == 8
            "'DO YOU EVEN KNOW WHO I AM?'"
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
        elsif a == 3
            9
        end 
    end 


end 


