require_relative "./Race"
class Elf < Race 

    def initialize(name)
        super
        @health = 50
        @mana = 100
        @evil = 0
        @happiness = 8 
    end 

    def evilness= (evilness)
        @evilness = evilness.clamp(0,10)
    end 

    def happiness= (happiness)
        @happiness = happiness.clamp(0,10)
    end 

    # def take_damage_from_goblin
    #     @health = @health - 3
    #     puts "You took 3 damage. \n 
    #           HP: #{@health}"
    # end 
#create the joining class to join monster and user; take_damager be in instance in Fight class
#reesponsible for keeping track of HP of user/monster; 
# or keep track of monster/user in CLI ; CLI keeping track of HP 
    def take_damage_from_dragon #learn from resources how to communicate with other Classes.
        @health = @health - 15 #how to communicate with dragon class 
        puts "O U C H! \n 
              You took 15 damage. \n
              HP: #{@health}"
    end 
end 

# eliza = Elf.new("Eliza")