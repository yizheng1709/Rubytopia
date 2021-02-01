class Dragon < Monster 
    attr_accessor :health, :name  

    def initialize
        self.health = 60
        self.name_set
    end 

    def health=(health)
        @health = health.clamp(0, 60)
    end 

    def name_set
        num = rand(7)
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
        "Shall I wait for you to put on a diaper first? \n
        Or do you not know how to do that?\n"
    end 

    def attack #argument of adventurer's class
        # adventurer.health = adventurer.health - 10, something like that 
        # if adventurer.health != 0
            #insult
            #random generator for one of three attacks:
            # 8 tail whip, 10 claw , 15 fire breath 
    end 

    def reply
        a = rand(9)
        "#{self.name} said: \n"
        if a == 0
            "What are you doing here? Did someone leave your cage open?"
        elsif a == 1
            "Let's play Horse. I'll be the front end, and you be yourself."
        elsif a == 2
            "I'm busy right now. Could I ignore you another time?"
        elsif a == 3
            "You are living proof that our Creator has a sense of humor."
        elsif a == 4
            "How do you explain to your mother what you do for a living?"
        elsif a == 5
            "Did you step on a branch? Or was that your back?"
        elsif a == 6
            "I wish I was shopping right now."
        elsif a == 7
            "You know, I really don't think you can defeat me."
        elsif a == 8
            "I'm going to be late to my date. UGH!"
        end 
    end 


end 

Dragon.new.name 