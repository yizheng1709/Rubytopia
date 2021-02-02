class Sorcerer
    attr_accessor :health, :name  

    def initialize
        self.health = 60
        self.name_set
    end 

    def health=(health)
        @health = health.clamp(0, 60)
    end 

    def name_set
        num = rand(16)
        if num == 0
            self.name = "George Orwell the Sorcerer"
        elsif num == 1
            self.name = "Charles Dickens the Sorcerer"
        elsif num == 2
            self.name = "William Shakespeare the Sorcerer"
        elsif num == 3
            self.name = "Geoffrey Chaucer the Sorcerer"
        elsif num == 4
            self.name = "Edgar Allan Poe the Sorcerer"
        elsif num == 5
            self.name = "Mark Twain the Sorcerer"
        elsif num == 6
            self.name = "John Milton the Sorcerer"
        elsif num == 7
            self.name = "J. D. Salinger the Sorcerer"
        elsif num == 8
            self.name = "William Wordsworth the Sorcerer"
        elsif num == 9
            self.name = "Herman Melville the Sorcerer"
        elsif num == 10
            self.name = "Lord Byron the Sorcerer"
        elsif num == 11
            self.name = "H. P. Lovecraft the Sorcerer"
        elsif num == 12
            self.name = "Kazuo Ishiguro the Sorcerer"
        elsif num == 13
            self.name = "Lewis Carroll the Sorcerer"
        elsif num == 14
            self.name = "Leo Tolstoy the Sorcerer"
        else
            self.name = "Oscar Wilde the Sorcerer"
        end 
    end 

    def battle_cry
        "#{self.name} says: 'I became insane, with long intervals of horrible sanity.' \n"
    end 

    def death_cry
        "#{self.name} says: 'War is peace. Freedom is slavery. Ignorance is strength.\n
        All animals are equal, but some animals are more equal than others.\n
        Big Brother is watching you.'\n"
    end 

    def attack
        a = rand(4)
        if a == 0
            5
        elsif a == 1
            6
        elsif a == 2
            6
        else
            7
        end 
    end 

    def reply
        a = rand(8)
        if a == 0
            "#{self.name} says: 'The world is indeed comic, but the joke is on mankind.'\n"
        elsif a == 1
            "#{self.name} says: 'There is nothing in the world so irresistibly contagious as laughter and good humor.'\n"
        elsif a == 2
            "#{self.name} says: 'Get your facts first, and then you can distort them as much as you please.'\n"
        elsif a == 3
            "#{self.name} says: 'Nietzsche was stupid and abnormal.'\n"
        elsif a == 4
            "#{self.name} says: 'Who cares for you? You're nothing but a pack of cards!'\n"
        elsif a == 5
            "#{self.name} says: 'All children have to be deceived if they are to grow up without trauma.'\n"
        elsif a == 6
            "#{self.name} says: 'The guilty think all talk is of themselves.'\n"
        else
            "#{self.name} says: 'Better to reign in Hell than serve in Heaven.'\n"
        end 
    end 
end 