class Imp
    attr_accessor :health, :name  

    def initialize
        self.health = 15
        self.name_set
    end

    def health=(health)
        @health = health.clamp(0,15)
    end 

    def name_set
        num = rand(7)
        if num == 0
            self.name = "Ivan the Imp"
        elsif num == 1
            self.name = "Isaac the Imp"
        elsif num == 2
            self.name = "Ian the Imp"
        elsif num == 3
            self.name = "Igor the Imp"
        elsif num == 4
            self.name = "Ievan the Imp"
        elsif num == 5
            self.name = "Ikram the Imp"
        else
            self.name = "Isaiah the Imp"
        end 
    end 

    def battle_cry
        "#{self.name} says: 'I am not that small!'"
    end 

    def death_cry
        "#{self.name} says: 'You got lucky because you're bigger than me!'"
    end 

    def reply 
        a = rand(9)
        if a == 0
            "#{self.name} says: 'Don't think you're better than me 'cuz you're taller!'\n"
        elsif a == 1
            "#{self.name} says: 'I will grow taller soon!'\n"
        elsif a == 2
            "#{self.name} says: 'Just you wait! I will be taller than you one day!'\n"
        elsif a == 3
            "#{self.name} says: 'Pft! How's the weather up there?'\n"
        elsif a == 4
            "#{self.name} says: 'I bet you walk into walls often!'\n"
        elsif a == 5
            "#{self.name} says: 'Must be nice to be able to reaach for high shelves!'\n"
        elsif a == 6
            "#{self.name} says: 'You remind me of my high school bully.'\n"
        elsif a == 7
            "#{self.name} says: 'Did you go to the dumpster to shop?'\n"
        else
            "#{self.name} says: 'Have you heard about my Lord and Savior, Satan?' \n"
        end 
    end 

    def attack 
        a = rand(4)
        if a == 0 
            1
        elsif a == 1
            1
        elsif a == 2 
            2
        else
            3
        end 
    end 
end 