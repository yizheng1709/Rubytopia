#make 5 monsters 
#when encounter adventurer, smile
class Goblin 
    attr_accessor :health, :name  

    def initialize
        self.health = 20
        self.name = "Gerald"
        puts "The Goblin shyly smiles and waves at you. \n \n"
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
        puts "*The Dragon farted.*"
    end 

    def attack #argument of adventurer's class
        # adventurer.health = adventurer.health - 10, something like that 
        # if adventurer.health != 0
            #insult
            #random generator for one of three attacks:
            # 8 tail whip, 10 claw , 15 fire breath 
    end 

    def insult #invoke this method after Dragon lands an attack and HP is not 0
               #get a random generator to select a random outcome 
        if self.health > 0
            a = rand(8)
            puts "The Dragon said:"
            if a == 0
                puts "What are you doing here? Did someone leave your cage open?"
            elsif a == 1
                 puts "Let's play Horse. I'll be the front end, and you be yourself."
            elsif a == 2
                 puts "I'm busy right now. Could I ignore you another time?"
            elsif a == 3
                puts "You are living proof that our Creator has a sense of humor."
            elsif a == 4
                puts "How do you explain to your mother what you do for a living?"
            elsif a == 5
                puts "Did you step on a branch? Or was that your back?"
            elsif a == 6
                puts "I wish I was shopping right now."
            elsif a == 7
                puts "You know, I really don't think you can defeat me."
            elsif a == 8
                puts "I'm going to be late to my date."
            end 
        end 
    end 


end 

# drogo = Dragon.new 
# drogo.insult 

# gobby = Goblin.new 
# gobby.beg 