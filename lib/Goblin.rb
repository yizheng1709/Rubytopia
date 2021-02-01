class Goblin < Monster 
    attr_accessor :health, :name  

    def initialize
        self.health = 20
        self.name_set
    end

    def health=(health)
        @health = health.clamp(0,20)
    end 

    #random name generator 
    def name_set
        num = rand(6)
        if num == 0
            self.name = "Gary"
        elsif num == 1
            self.name = "Gerald"
        elsif num == 2
            self.name = "Gunther"
        elsif num == 3
            self.name = "Gavin"
        elsif num == 4
            self.name == "Gideon"
        elsif num == 5
            self.name == "Greg"
        elsif num == 6
            self.name == "Gabriel"
        end 
    end 

    def battle_cry
        "The Goblin is sad. \n
        :("
    end 

    def reply 
        "#{self.name} said: \n"
        a = rand(9)
        if a == 0
            "Please let me go! I have six wives and ten kids waiting for me!"
        elsif a == 1
            "I left the oven on! Please let me go!"
        elsif a == 2
            "Let me be your servant instead!"
        elsif a == 3
            "I want to finish my college degree first! Please!"
        elsif a == 4
            "I cannot bring dishonor to my family!"
        elsif a == 5
            "I've done nothing wrong in my life!"
        elsif a == 6
            "Why are you so cruel?"
        elsif a == 7
            "You're not scared of going to Hell?"
        elsif a == 8
            "I love you! Please let me go!"
        end 
    end 

    def attack #how to refer to the specific Rubytopia game
        a = rand(3)
        if a == 0 
            RubytopiaGame.player_health -= 3
        elsif a == 1
            Rubytopia.player_health -= 4
        elsif a == 2 
            Rubytopia.player_health -= 2
        elsif a == 3 
            puts "The Goblin landed a critical attack!"
            Rubytopia.player_health -= 7
        end 
    end 
end 