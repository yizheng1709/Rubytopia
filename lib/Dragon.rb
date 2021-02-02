class Dragon
    attr_accessor :health, :name  

    def initialize
        self.health = 50
        self.name_set
    end 

    def health=(health)
        @health = health.clamp(0, 50)
    end 

    def name_set
        num = rand(7)
        if num == 0
            @name = "DyanNa the Dragon"
        elsif num == 1
            @name = "DaNa the Dragon"
        elsif num == 2
            @name = "DonNa the Dragon"
        elsif num == 3
            @name = "DekKee the Dragon"
        elsif num == 4
            @name = "DonKee the Dragon"
        elsif num == 5
            @name = "D.Dog the Dragon"
        else
            @name = "DoDo the Dragon"
        end 
    end 

    def battle_cry
        "#{@name} says: 'Shall I wait for you to put on a diaper first? \n
        Or do you not know how to do that?' \n"
    end 

    def death_cry
        "#{@name} says: 'Ugh, I can't believe I got defeated by someone with one brain cell.'"
    end 

    def attack
        a = rand(4)
        if a == 0
            4
        elsif a == 1
            4
        elsif a == 2
            6
        else
            8
        end 
    end 

    def reply
        a = rand(9)
        if a == 0
            "#{self.name} says: 'What are you doing here? Did someone leave your cage open?'"
        elsif a == 1
            "#{self.name} says: 'Let's play Horse. I'll be the front end, and you be yourself.'"
        elsif a == 2
            "#{self.name} says: 'I'm busy right now. Could I ignore you another time?'"
        elsif a == 3
            "#{self.name} says: 'You are living proof that our Creator has a sense of humor.'"
        elsif a == 4
            "#{self.name} says: 'How do you explain to your mother what you do for a living?'"
        elsif a == 5
            "#{self.name} says: 'Did you step on a branch? Or was that your back?'"
        elsif a == 6
            "#{self.name} says: 'I wish I was shopping right now.'"
        elsif a == 7
            "#{self.name} says: 'You know, I really don't think you can defeat me.'"
        else
            "#{self.name} says: 'I'm going to be late to my date. UGH!'"
        end 
    end 


end 

# Dragon.new.name 