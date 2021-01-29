class Goblin 
    attr_accessor :health, :name  

    def initialize
        self.health = 20
        self.name_set
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


#dragons

class Dragon 
    attr_accessor :health, :name  

    def initialize
        self.health = 60
        self.name = "Dyanna the Dragon"
    end 

    def battle_cry
        puts "Shall I wait for you to put on a diaper first? \n
        Or do you not know how to do that?\n"
    end 

    def attack #argument of adventurer's class
        # adventurer.health = adventurer.health - 10, something like that 
        # if adventurer.health != 0
            #insult
            #random generator for one of three attacks:
            # 8 tail whip, 10 claw , 15 fire breath 
    end 



end 

# drogo = Dragon.new 
# drogo.insult 

# gobby = Goblin.new 
# gobby.beg 