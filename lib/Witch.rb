class Witch
    attr_accessor :health, :name  

    def initialize
        self.health = 55
        self.name_set
    end 

    def health=(health)
        @health = health.clamp(0, 55)
    end 

    def name_set
        num = rand(11)
        if num == 0
            self.name = "J.K. Rowling the Witch"
        elsif num == 1
            self.name = "Virginia Woolf the Witch"
        elsif num == 2
            self.name = "Emily Bronte the Witch"
        elsif num == 3
            self.name = "Agatha Christie the Witch"
        elsif num == 4
            self.name = "Mary Wollstonecraft the Witch"
        elsif num == 5
            self.name = "Mary Shelley the Witch"
        elsif num == 6
            self.name = "Margaret Atwood the Witch"
        elsif num == 7
            self.name = "Emily Dickinson the Witch"
        elsif num == 8
            self.name = "Joan Didion the Witch"
        elsif num == 9
            self.name = "Kate Chopin the Witch"
        else
            self.name = "Jane Austen the Witch"
        end 
    end 

    def battle_cry
        "#{self.name} says: 'By the pricking of my thumbs, \n
        Something wicked this way comes. \n
        It's you. You're the wicked thing. Ugh. Disgusting.' \n"
    end 

    def death_cry
        "#{self.name} says: 'When shall we meet again? In thunder, lightning, or in rain?'"
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
            "#{self.name} says: 'Fair is foul, and foul is fair; Hover through the fog and filthy air.'\n"
        elsif a == 1
            "#{self.name} says: 'Fillet of a fenny snake, \n In the caldron boil and bake'\n"
        elsif a == 2
            "#{self.name} says: 'Eye of newt and toe of frog.'\n"
        elsif a == 3
            "#{self.name} says: 'Wool of bat and tongue of dog.'\n"
        elsif a == 4
            "#{self.name} says: 'Adder's fork and blind-worm's sting.'\n"
        elsif a == 5
            "#{self.name} says: 'Lizard's leg and howlet's wing.'\n"
        elsif a == 6
            "#{self.name} says: 'For a charm of powerful trouble, \n Like a hell-broth boil and bubble.'\n"
        else
            "#{self.name} says: 'Cool it with a baboon's blood, \n Then the charm is firm and good.'\n"
        end 
    end 
end 
