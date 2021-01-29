class Dragon < Monster 
    attr_accessor :health, :name  

    def initialize
        self.health = 60
        name_set
        binding.pry
    end 

    def health=(health)
        @health = health.clamp(0, 60)
    end 

    def name_set
        num = rand(6)
        if num == 0
            self.name = "DyanNa"
        elsif num == 1
            self.name = "DaNa"
        elsif num == 2
            self.name = "DonNa"
        elsif num == 3
            self.name = "DekKee"
        elsif num == 4
            self.name == "DonKee"
        elsif num == 5
            self.name == "D.Dog"
        elsif num == 6
            self.name == "DoDo"
        end 
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