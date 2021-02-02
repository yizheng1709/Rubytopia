class Karen
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
            @name = "Joe-Le-An the Fake Santa"
        elsif num == 1
            @name = "Op-Al the Fake Santa"
        elsif num == 2
            @name = "DeBo-Ra-Ah-Ah the Fake Santa"
        elsif num == 3
            @name = "Mar-Ga-Ret the Fake Santa"
        elsif num == 4
            @name = "Whey-Le-E the Fake Santa"
        elsif num == 5
            @name = "Hay-Le-E the Fake Santa" 
        elsif num == 6
            @name = "Nahn-See the Fake Santa"
        end 
    end 

    def battle_cry
        "Sad Holidays!"
    end 

    def death_cry
        "#{@name} says: I *WILL* SPEAK TO YOUR MANAGER ONE DAY!!! JUST YOU WAIT!"
    end 

    def reply 
        "#{@name} says: \n"
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
            "'I HAVE MY RIGHTS AS A Fake Santa!'"
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
