class Goblin 
    attr_accessor :health, :name  

    def initialize
        self.health = 20
        self.name = "Gerald"
    end
    
    def battle_cry
        puts "The Goblin is sad. \n
        :("
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
        self.name = "Dyanna"
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