
# FOUND scrape a site that lists major events or eras (or mythological ones)
#ask user a time period or era or mythological countries they like

#and the player is sent back to a time as one of the three dominating races
#to fight monsters! 
#the place will be an instance variable of :setting
#if i have time, change the available races according to setting

#add current monster to friend list if monster does not die
#if you cannot kill mosnter within 10 turns, the monster thinks you're super nice
#the monster tells you his/her name if they become your friend!
#add current mosnter to slain list if monster dies
#battle cry happens immediately when player chooses to enter into battle



class RubytopiaGame #this is the only clss that should have puts, and method invocation 
    
    attr_accessor :player_name, :monster, :background, :player  
    #monster should record his own health
    @@monsters_slain = [] #if over 5, Satan takes over your heart
    @@friends_made = [] #if over 5, your journey comes to an end and your friends bid you farewell

    def start
        self.greeting_user
        self.selecting_race
        sleep(5)
        self.setting_the_background 
        # sleep(5)
        # self.user_choosing_background
        #method for scraping favorited site (method will scrape a brief description of the place)
        # self.monter_generator
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
        player = Giant.new(self.player_name)
        puts "      💎 Welcome to Rubytopia, #{self.player_name}! 💎\n
        You've chosen to be part of the Giant Race. \n
        As a Giant, you have incredible stamina, \n
        but you have no idea what mana is or how to channel it. \n
        However, that does not stop you from being a happy Giant. \n

        HP: #{player.health} \n
        MP: #{player.mana} \n"
    end 
    
    def create_elf 
        elf = Elf.new(self.player_name)
        puts "      💎 Welcome to Rubytopia, #{self.player_name}!💎 \n
        You've chosen to be part of the Elf Race. \n
        As an Elf, your ❤  is purest amongst other races, \n 
        so you are able to channel your mana more efficiently. \n
        You are not easily corrupted by darkness, \n
        but that does not mean you should be careless. \n
        HP: #{player.health} \n
        MP: #{player.mana} \n"
    end 

    def create_human 
        human = Human.new(self.player_name)
        puts "#{self.player_name}, seriously? \n
        Why would you want to be a Human \n
        when you are already one in real life? \n
        But I digress. \n\n
        💎 Welcome to Rubytopia, #{self.player_name}! 💎\n
        You've chosen to be part of the Human Race. \n
        As a Human, you have average stats amongst other races. \n
        You are easily influenced by darkness, \n
        so be careful with the choices you make during your adventure. \n
        HP: #{player.health} \n
        MP: #{player.mana} \n" 
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

    def self.friends_made
        @@friends_made
    end 

    def friends_made_save 
        self.class.friends_made << self.monster 
    end 

    def self.friends_made_count 
        @@friends_made.count 
    end 

    def monster_generator 
        num = rand(1) #add to this as I build more monsters
        if num == 0
            goblin_encounter 
        elsif num == 1
            dragon_encounter 
        end 
    end 

    def goblin_encounter
        puts "You've encountered a goblin! \n\n"
        self.monster = Goblin.new
        puts "The Goblin shyly smiles and waves at you. \n \n"
        puts "What will you do? \n \n"
    end  

    def goblin_battle_cry
        puts "The Goblin is sad. \n
        :("
    end 

    def goblin_beg #begs every time he attakcs but player is still alive
        puts "#{monster.name} said:"
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

    def dragon_encounter 
        puts "Just your luck! You've encountered a fierce and sassy dragon! Yikes!"
        self.monster = Dragon.new 
        puts "*The Dragon farted.*"
        puts "The putrid smell is strong enough to make you forget your own name."
    end 
    
    def dragon_battle_cry
        puts "The Dragon said: Shall I wait for you to put on a diaper first? \n
        Or do you not know how to do that?\n"
    end 

    def dragon_insult #invoke this method after Dragon lands an attack and HP is not 0
        #get a random generator to select a random outcome 
        if monster.health > 0
            a = rand(8)
            puts "The Dragon said:"
             if a == 0
                puts "What are you doing here? Did someone leave your cage open?"
             elsif a == 1
                 puts "Let's play Horse. I'll be the front end, and you be yourself."
             elsif a == 2
                  puts "I'm busy right now. Could I ignore you another time?"
            elsif a == 3
                puts "You are living proof that our Creator has a sense of humor."
            elsif a == 4
                 puts "How do you explain to your mother what you do for a living?"
            elsif a == 5
                puts "Did you step on a branch? Or was that your back?"
            elsif a == 6
                puts "I wish I was shopping right now."
            elsif a == 7
                puts "You know, I really don't think you can defeat me."
            elsif a == 8
                puts "I'm going to be late to my date."
            end 
        end 
    end 

    def run_away
        puts "You've decided to run away...?! Wow, okay."
    end 

    def battle 
        puts "You've decided to battle! Great!"
        monster.battle_cry 
        #monsters begs and fights back only 
        until over?
            self.player_turn
            self.mosnter_turn 
        end  
    end 

    def ask_player_for_battle_turn_choice
        puts "What will you do?"
        puts "1. Drink HP potion (+10 HP)"
        puts "2. Drink MP potion (+10 MP)"
        puts "3. Attack"
        puts "4. Do nothing"
        choice = gets.strip 
        if choice == "1" || choice.include?("HP") || choice.include?("hp")
            self.player.drink_health_potion
            puts "HP +10 \n
            HP: #{player.health}"
        elsif choice == "2" || choice.include?("MP") || choice.include?("mp")
            self.player.drink_mana_potion
            puts "MP +10 \n
            MP: #{player_mana}"
        elsif choice == "3" || choice == "attack" || choice == "Attack"
            #ask player which attack they want to use
            #make a method that lists player.set_of_attacks
            #set attack = gets.strip again
            #if attack = the certain number, subtract the damage 
            #from @monster.health
        elsif choice == "4" || choice.include?("nothing")
            self.player.do_nothing
        else 
            puts "Umm, #{player_name}... It's not hard to choose from 1-4. \n
            Please try again."
        end 
    end  

    def player_turn 
        counter = 0
        while !over?
            self.ask_player_for_battle_turn_choice
            counter += 1
        end 
        if counter == 10 && self.monster.health > 0
            self.friends_made_save 
        elsif monster.health == 0 
            self.monsters_slain_save 
            self.increase_evilness
            puts "Oh... You actually killed the monster... \n
            Well, okay. \n
            Umm... You're not slightly more evil. \n
            Evilness Counter: #{player.evilness}"
        end 
    end 

    #this should be checked every turn the user is fighting a monster
    def over?
        if player.death? || self.friendly_ending? || self.bad_ending?
            true 
        end 
    end 
    
    def death?
        if self.player.death?
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
        if self.player.evilness == 10
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