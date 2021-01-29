require_relative "Elf"
require_relative "Human"
require_relative "Giant"
require_relative "Monsters"
require_relative "Race"
require_relative "Scraper"
require_relative "MythPlace"
# FOUND scrape a site that lists major events or eras (or mythological ones)
#ask user a time period or era or mythological countries they like

#and the player is sent back to a time as one of the three dominating races
#to fight monsters! 
#the place will be an instance variable of :setting
#if i have time, change the available races according to setting


class RubytopiaGame #this is the only clss that should have puts, and method invocation 
    
    attr_accessor :player_name, :player_race, :monster, :background  
    #monster should record his own health
    @@monsters_slain = [] #if over 5, Satan takes over your heart
    @@friends_made = [] #if over 5, your journey comes to an end and your friends bid you farewell

    def initialize
        Scraper.new.make_mythplace
        self.start 
    end 

    def start
        self.greeting_user
        self.selecting_race
        sleep(5)
        self.setting_the_background 
        # sleep(5)
        # self.user_choosing_background
        #method for scraping favorited site (method will scrape a brief description of the place)
        # self.goblin_encounter
    end 

    def greeting_user
        puts "\n\n
        Hello, player! \n\n
        What is your name?"
        self.player_name = gets.strip 
        puts "\nWelcome #{self.player_name}! \n\n"
    end 
    
    def selecting_race
        puts "Please select a race to continue. \n\n
        Elf \n
        Human \n
        Giant"
        race_choice = gets.strip
        if race_choice == "giant" || race_choice == "Giant"
            self.create_giant
        elsif race_choice == "elf" || race_choice == "Elf"
            self.create_elf
        elsif race_choice == "human" || race_choice == "Human"
            self.create_human
        else
            puts "It's not hard to select a race.\n
            Please try again.\n"
            selecting_race 
        end 
    end 

    def create_giant 
        giant = Giant.new(self.player_name)
        self.player_race = giant #idk if i need this
        puts "      💎 Welcome to Rubytopia, #{self.player_name}! 💎\n
        You've chosen to be part of the Giant Race. \n
        As a Giant, you have incredible stamina, \n
        but you have no idea what mana is or how to channel it. \n
        However, that does not stop you from being a happy Giant. \n

        HP: #{giant.health} \n
        MP: #{giant.mana} \n"
    end 
    
    def create_elf 
        elf = Elf.new(self.player_name)
        self.player_race = elf #object elf #idk if i need this
        puts "      💎 Welcome to Rubytopia, #{self.player_name}!💎 \n
        You've chosen to be part of the Elf Race. \n
        As an Elf, your ❤  is purest amongst other races, \n 
        so you are able to channel your mana more efficiently. \n
        You are not easily corrupted by darkness, \n
        but that does not mean you should be careless. \n
        HP: #{elf.health} \n
        MP: #{elf.mana} \n"
    end 

    def create_human 
        human = Human.new(self.player_name)
        self.player_race = human #object human #idk if i need this
        puts "#{self.player_name}, seriously? \n
        Why would you want to be a Human \n
        when you are already one in real life? \n
        But I digress. \n\n
        💎 Welcome to Rubytopia, #{self.player_name}! 💎\n
        You've chosen to be part of the Human Race. \n
        As a Human, you have average stats amongst other races. \n
        You are easily influenced by darkness, \n
        so be careful with the choices you make during your adventure. \n
        HP: #{human.health} \n
        MP: #{human.mana} \n" 
    end 

    def setting_the_background
        puts "\n\nRubytopia is a land that is know for its mysterious portal. \n
        This portal can take you to any mythological land that you so desire. \n
        Today, it's your turn to play with this mysterious portal! \n
        Which mytholgical land would you like to visit? \n
        The most popular choices for Rubytopian citizens have been: \n
        Themyscira \n
        Avalon \n
        Atlantis \n
        Hell \n
        Asgard \n
        But feel free to take the road less traveled \n
        and go somewhere less popular. \n\n"
        choice = gets 
        if MythPlace.all.find {|place| place.name == choice} #truthy statement #why is this not registering
            self.background = MythPlace.all.find {|place| place.name == choice}
            puts "Splendid choice! You've chosen to explore #{self.background.name}. \n
            Did you know that #{self.background.name} is #{self.background.description} \n
            Well, now you do."
        else 
            puts "\nPlease remember how to spell proper nouns.\n"
            self.setting_the_background 
        end  
    end 

    def self.monsters_slain
        @@monsters_slain
    end 

    def monsters_slain_save 
        self.class.monsters_slain << self.monster 
    end 

    def self.monsters_slain_count 
        @@monsters_slain.count 
    end 

    def self.friends_made
        @@friends_made
    end 

    def friends_made_save 
        self.class.friends_made << self.monster 
    end 

    def self.friends_made_count 
        @@friends_made.count 
    end 

    def goblin_encounter
        puts "You've encountered a goblin! \n\n"
        monster = Goblin.new
        self.monster_health = monster.health
        puts "What will you do? \n \n"
    end  

    def goblin_beg #begs every time he attakcs but player is still alive
        puts "Gerald said:"
        a = rand(8)
        if a == 0
            puts "Please let me go! I have six wives and ten kids waiting for me!"
        elsif a == 1
            puts "I left the oven on! Please let me go!"
        elsif a == 2
            puts "Let me be your servant instead!"
        elsif a == 3
            puts "I want to finish my college degree first! Please!"
        elsif a == 4
            puts "I cannot bring dishonor to my family!"
        elsif a == 5
            puts "I've done nothing wrong in my life!"
        elsif a == 6
            puts "Why are you so cruel?"
        elsif a == 7
            puts "You're not scared of going to Hell?"
        elsif a == 8
            puts "I love you! Please let me go!"
        end 
    end 

    def turn 
        counter = 0
        while !player_death?
            #player could attack or drink potion or be idle 
            if counter == 10 && self.monster_health #how to code monster health hasnt changed?
                #if it hasnt changed, you become friends with the monster. 
                #add to array of friends. 
                
                #elsif monster_health == 0 
                #self.monsters_slain_save 
            end 
        end 
    end 



    #this should be checked every turn the user is fighting a monster
    def death?
        if player_health == 0
            puts "Your adventure was aight. \n
            Nothing to brag about. \n"
            restart?
        end 
    end 

    def restart?
        puts "Would you like to restart your adventure? \n
        Yes or No \n"
        a = gets.strip 
        if a == "yes" || a == "Yes" || a == "Ya" || a == "ya" || a == "y"
            RubytopiaGame.new 
         else 
            puts "Oh. Okay then. I won't take it personally. See you around?"
        end 
    end 

    #these methods should be cchecked every time a battle ends 
    def self.friendly_ending? 
        if self.friends_made_count == 5 
            puts "Your journey comes to an end, as you realize you have work tomorrow. \n
            As you are about to walk through the exit portal, \n
            all of the friends that you've made today came to bid farewell. \n"
            self.friends_made.each {|friend| puts "#{friend.name} said: See you around?"}
            restart?
        end 
    end 
    
    def self.bad_ending?
        if self.monsters_slain_count == 5
            puts "I can't believe you are so cruel! \n
            But you know who loves cruel souls? \n
            Satan. \n
            Satan loves your soul so much that he decided to take it from you. \n
            Now your soul is part of Satan's favorite souls collection. \n
            Way to go, #{player_name}."
            restart?
        end 
    end 
            

end 

game_one = RubytopiaGame.new 