class Goblin
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
            @name = "Gary the Goblin"
        elsif num == 1
            @name = "Gerald the Goblin"
        elsif num == 2
            @name = "Gunther the Goblin"
        elsif num == 3
            @name = "Gavin the Goblin"
        elsif num == 4
            @name = "Gideon the Goblin"
        elsif num == 5
            @name = "Greg the Goblin"
        else
            @name = "Gabriel the Goblin"
        end 
    end 

    def battle_cry
        "#{@name} says: :("
    end 

    def death_cry
        "#{@name} says: 'I just wanted to bring honor to my wives and kids...'"
    end 

    def reply 
        a = rand(9)
        if a == 0
            "#{self.name} says: 'Please let me go! I have six wives and ten kids waiting for me!'"
        elsif a == 1
            "#{self.name} says: 'I left the oven on! Please let me go!'"
        elsif a == 2
            "#{self.name} says: 'Let me be your servant instead!'"
        elsif a == 3
            "#{self.name} says: 'I want to finish my college degree first! Please!'"
        elsif a == 4
            "#{self.name} says: 'I cannot bring dishonor to my family!'"
        elsif a == 5
            "#{self.name} says: 'I've done nothing wrong in my life!'"
        elsif a == 6
            "#{self.name} says: 'Why are you so cruel?'"
        elsif a == 7
            "#{self.name} says: 'You're not scared of going to Hell?'"
        else
            "#{self.name} says: 'I love you! Please let me go!'"
        end 
    end 

    def attack 
        a = rand(4)
        if a == 0 
            2
        elsif a == 1
            2
        elsif a == 2 
            3
        elsif a == 3 
            4
        end 
    end 
end 