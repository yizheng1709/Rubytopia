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
            @name = "Ivan the Imp"
        elsif num == 1
            @name = "Isaac the Imp"
        elsif num == 2
            @name = "Ian the Imp"
        elsif num == 3
            @name = "Igor the Imp"
        elsif num == 4
            @name = "Ievan the Imp"
        elsif num == 5
            @name = "Ikram the Imp"
        else
            @name = "Isaiah the Imp"
        end 
    end 

    def battle_cry
        "#{@name} says: 'I am not that small!'"
    end 

    def death_cry
        "#{@name} says: 'You got lucky because you're bigger than me!'"
    end 

    def reply 
        a = rand(9)
        if a == 0
            "#{self.name} says: 'Don't think you're better than me 'cuz you're taller!'"
        elsif a == 1
            "#{self.name} says: 'I will grow taller soon!'"
        elsif a == 2
            "#{self.name} says: 'Just you wait! I will be taller than you one day!'"
        elsif a == 3
            "#{self.name} says: 'Pft! How's the weather up there?'"
        elsif a == 4
            "#{self.name} says: 'I bet you walk into walls often!'"
        elsif a == 5
            "#{self.name} says: 'Must be nice to be able to reaach for high shelves!'"
        elsif a == 6
            "#{self.name} says: 'You remind me of my high school bully.'"
        elsif a == 7
            "#{self.name} says: 'Did you go to the dumpster to shop?'"
        else
            "#{self.name} says: 'Have you heard about my Lord and Savior, Satan?"
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