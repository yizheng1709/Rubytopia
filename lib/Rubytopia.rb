class RubytopiaGame 
    
    attr_accessor :player_name, :monster, :player, :background   
   #if friends_made.count == 5, your journey comes to an end and your friends bid you farewell

    def start
        Scraper.new.make_mythplace
        self.greeting_user
        self.selecting_race
        sleep(6)
        self.setting_the_background 
        sleep(5)
        self.first_event_setup
        sleep(8)
        until self.over? 
            self.event_generator
        end 
        

    end 

    def greeting_user
        puts "Hello, player!"
        puts ""
        puts "What is your name?"
        puts ""
        self.player_name = gets.strip 
        puts "Welcome #{self.player_name}!"
        puts ""
    end 
    
    def selecting_race
        puts ""
        puts "Please select a race to continue."
        puts ""
        puts "1. Giant"
        puts ""
        puts "2. Elf"
        puts ""
        puts "3. Human"
        puts ""
        puts "4. Jinook"
        puts ""
        race_choice = gets.strip.downcase
        if race_choice == "1" || race_choice == "giant" 
            self.create_giant
        elsif race_choice == "2" || race_choice == "elf" 
            self.create_elf
        elsif race_choice == "3" || race_choice == "human" 
            self.create_human
        elsif race_choice == "4" || race_choice == "jinook" 
            self.create_jinook
        else
            puts "It's not hard to select a race."
            puts ""
            puts "Please try again."
            puts ""
            sleep(2)
            selecting_race 
        end 
    end 

    def create_giant 
        self.player = Giant.new
        puts "💎 Welcome to Rubytopia, #{self.player_name}! 💎"
        puts ""
        puts "You've chosen to be part of the Giant Race."
        sleep(3)
        puts "As a Giant, you have incredible stamina, but you have little idea of what Mana is or how to channel it well."
        puts ""
        puts "However, that does not stop you from being a happy Giant."
        puts ""
        puts "HP: #{player.health} (MAX)".colorize(:red)
        puts ""
        puts "MP: #{player.mana} (MAX)".colorize(:blue)
        puts ""
    end 

    def create_jinook 
        self.player = Jinook.new
        puts "💎 Welcome to Rubytopia, #{self.player_name}! 💎"
        puts ""
        puts "You've chosen to be part of the Jinook Race, the race of perfect dads."
        sleep(3)
        puts "As a Jinook, you have incredible intelligence and stamina."
        puts ""
        puts "Your race is admired for being incredibly wise and diligent."
        puts ""
        puts "HP: #{player.health} (MAX)".colorize(:red)
        puts ""
        puts "MP: #{player.mana} (MAX)".colorize(:blue)
        puts ""
    end 
    
    def create_elf 
        self.player = Elf.new
        puts "💎 Welcome to Rubytopia, #{self.player_name}!💎"
        puts ""
        puts "You've chosen to be part of the Elf Race."
        sleep(3)
        puts "As an Elf, your ❤  is purest amongst other races, so you are able to channel your mana more efficiently."
        puts ""
        puts "HP: #{player.health} (MAX)".colorize(:red)
        puts ""
        puts "MP: #{player.mana} (MAX)".colorize(:blue)
        puts ""
    end 

    def create_human 
        self.player = Human.new
        puts ""
        puts "#{self.player_name}, seriously?"
        puts ""
        puts "Why would you want to be a Human when you are already one in real life?"
        puts ""
        puts "But I digress."
        sleep(4)
        puts "💎 Welcome to Rubytopia, #{self.player_name}! 💎"
        puts ""
        puts "You've chosen to be part of the Human Race."
        puts ""
        puts "As a Human, you have average stats amongst other races."
        puts ""
        puts "HP: #{player.health} (MAX)".colorize(:red)
        puts ""
        puts "MP: #{player.mana} (MAX)".colorize(:blue)
        puts ""
    end 

    def setting_the_background
        puts ""
        puts "Rubytopia is a land that is know for its mysterious portal."
        puts ""
        puts "This portal can take you to any mythological land that you so desire."
        puts ""
        puts "Today, it's your turn to play with this mysterious portal!"
        puts ""
        sleep(6)
        puts "Which mytholgical land would you like to visit?"
        puts ""
        puts "The most popular choices for Rubytopian citizens have been:"
        puts ""
        puts "Themyscira"
        puts ""
        puts "Camelot"
        puts ""
        puts "Atlantis"
        puts ""
        puts "Hell"
        puts ""
        puts "Asgard"
        puts ""
        puts "However, feel free to take the road less traveled and go somewhere less popular."
        puts ""
        choice = gets.strip 
        if MythPlace.all.find {|place| place.name.downcase == choice.downcase} 
            self.background = MythPlace.all.find {|place| place.name.downcase == choice.downcase}
            puts "Splendid choice! You've chosen to explore #{background.name}."
            puts ""
            sleep(2)
            info_about_background
        else 
            puts "Please remember how to spell the name of the place."
            puts ""
            puts ""
            sleep(2)
            self.setting_the_background 
        end  
    end 

    def info_about_background
        puts "Would you like to learn something about #{self.background.name}?"
        puts ""
        input = gets.strip.downcase 
        if input == "yes" || input == "y"
            puts "Did you know that #{background.name} is"
            puts ""
            puts "#{background.description}"
            puts ""
            puts "Well, now you do."
            puts ""
            puts "You're very welcome :)"
            puts ""
        elsif input == "no" || input == "n"
            puts "Well, *someone* isn't open to being a student. Okay then."
            puts ""
            puts "I will try to not take it personally."
            puts ""
        elsif input == "exit"
            self.exit_game
        else 
            puts "It's a close-ended question. Please try again."
            puts ""  
            sleep(1)
            info_about_background
        end 
    end 

    def first_event_setup #only in the first event_encounter
        puts ""
        puts "You stepped through the portal and entered #{self.background.name}."
        puts ""
        puts "Allow me to tell you this, #{self.player_name}."
        puts ""
        puts "You control your own fate. You will be the one to decide how your adventure will end."
        puts ""
        sleep(4)
        puts "If there is a time when you want to leave this world, let me know by typing 'exit'."
        puts ""
    end 

    def event_setup #this will be right before every event_encounter
        puts ""
        puts "As you continue to explore the wonderful place of #{self.background.name}, you had to make an unexpected stop."
        puts ""
    end 

    def event_generator 
        self.event_setup
        a = rand(10)
        if a > 1
            self.monster_generator
            self.run_or_fight
        else
            quizmaster_generator 
        end 
    end 

    def monster_generator 
        num = rand(5) #add to this as I build more monsters
        if num == 0
            goblin_encounter 
        elsif num == 1
            dragon_encounter 
        elsif num == 2
            karen_encounter
        elsif num == 3
            santa_encounter
        else
            imp_encounter
        end 
    end 

    def quizmaster_generator
        quiz = QuizMaster.new 
        puts quiz.appearance
        puts quiz.greeting 
        a = rand(9)
        puts ""
        puts "This is the question he asks:"
        puts ""
        puts quiz.question[a]
        input = gets.strip.downcase 
        if input == quiz.answer[a]
            self.correct_answer
        elsif input == "exit"
            self.exit_game
        else
            self.wrong_answer
        end 
    end   
   
    def correct_answer
        self.player.increase_happiness_by_1
        puts ""
        puts "Amazing! Your answer is correct, so Luke the Quiz Master left you alone."
        puts ""
        sleep(2)
        puts "You feel so smart that your happiness increased by 1 point!"
        puts ""
        puts "Happiness: #{self.player.happiness}"
        puts ""
        sleep(3)
    end 

    def wrong_answer 
        self.player.decrease_happiness_by_1
        puts ""
        puts "Luke the Quiz Master laughs at your wrong answer."
        puts ""
        sleep(2)
        puts "You're upset about giving the incorrect answer. Your happiness decreases by 1 point."
        puts ""
        puts "Happiness: #{self.player.happiness}"
        sleep(3)
    end 

    def goblin_encounter
        self.monster = Goblin.new
        puts ""
        puts "You've encountered a Goblin!"
        puts ""
        puts "The Goblin shyly smiles and waves at you."
        puts ""
        sleep(3)
    end  

    def imp_encounter
        self.monster = Imp.new
        puts ""
        puts "You've encountered an Imp!"
        puts ""
        puts "The Imp thinks you're blocking his path."
        puts ""
        sleep(3)
    end  

    def dragon_encounter
        self.monster = Dragon.new  
        puts ""
        puts "Just your luck! You've encountered a fierce and sassy dragon! Yikes!"
        puts ""
        puts "*The Dragon farts in front of you.*"
        puts ""
        puts "The putrid smell is strong enough to make you forget your own name."
        puts ""
        sleep(5)
    end 

    def karen_encounter
        self.monster = Karen.new 
        puts ""
        puts "Today is not your day! You've encountered a mighty Keh-Rhan!"
        puts ""
        puts "The monstrous Keh-Rhan makes your knees tremble."
        puts ""
        sleep(4)
    end 

    def santa_encounter
        self.monster = Santa.new 
        puts ""
        puts "You will have a sad holiday! You've encountered a Fake Santa!"
        puts ""
        puts "His pot belly amuses you."
        puts ""
        sleep(4)
    end 

    def run_or_fight
        puts ""
        puts "What will you do?"
        puts ""
        puts "1. Run?"
        puts "2. Fight?"
        puts ""
        choice = gets.strip.downcase  
        if choice.include?("run") || choice.include?("1")
            self.run_away
        elsif choice.include?("fight") || choice.include?("2")
            self.battle 
            self.player_turn #double check the logic of battle method
        elsif choice == "exit"
            self.exit_game
        else 
            puts "Please do try to stick with the choices that I've given you."
            sleep(2)
            self.run_or_fight
        end 
    end 

    def run_away
        puts ""
        puts "You've decided to run away...?! Wow, okay."
        sleep(1)
        puts ""
        puts "Is that how you deal with all your problems?"
        puts ""
        sleep(5)
    end 

    def battle 
        puts ""
        puts "You've decided to battle! Great!"
        puts ""
        puts monster.battle_cry 
        puts ""
    end 

    def monster_reply
        if self.monster.health > 0
            puts self.monster.reply 
        end 
    end 
    
    def list_of_battle_choices
        puts "What will you do? (1-4)" 
        puts ""
        puts "1. Drink HP potion (+10 HP)".colorize(:red)
        puts "2. Drink MP potion (+10 MP)".colorize(:blue)
        puts "3. Attack"
        puts "4. Ask the monster to be friends...?"
    end 

    def player_turn_choice
        list_of_battle_choices
        choice = gets.strip.downcase 
        if choice == "1" 
            self.player.drink_health_potion
            puts ""
            puts "You've decided to drink a Health potion."
            puts ""
            puts "HP +10".colorize(:red)
            puts "HP: #{player.health}".colorize(:red)
            puts "HP pots left: #{self.player.hp_pots}".colorize(:red)
            puts ""
            sleep(4)
        elsif choice == "2" 
            self.player.drink_mana_potion
            puts ""
            puts "You've decided to drink a Mana potion."
            puts ""
            puts "MP +10".colorize(:blue)
            puts "MP: #{player.mana}".colorize(:blue)
            puts "MP pots left: #{self.player.mp_pots}".colorize(:blue)
            puts ""
            sleep(4)
        elsif choice == "3" 
            if self.check_mana
                puts ""
                puts "You don't have any Mana left! Can't you see?"
                puts ""
                puts "Perhaps you should rethink your choice."
                puts ""
                sleep(3)
                self.player_turn_choice
            end 
            self.choosing_attack
        elsif choice == "4" 
            puts self.player.be_friends
            sleep(5)
        elsif choice == "exit"
            self.exit_game
        else 
            puts "Umm, #{player_name}... It's not hard to choose from 1-4."
            puts ""
            puts "Please try again."
            sleep(3)
            self.player_turn_choice
        end 
    end  

    def check_mana
        self.player.mana == 0
    end 

    def choosing_attack  #choice 3 of player_turn_choice
        puts player.set_of_attacks
        atk = gets.strip
        if atk == "1"
            mp = player.first_mana
            player.mana -= mp
            dmg = player.first_attack #this section is repetitive
            monster.health -= dmg  #could write as its own method
            puts ""
            puts "You dealt #{dmg} damage!"
            puts ""
            puts "Remaining MP: #{self.player.mana}".colorize(:blue)
            puts ""
            puts "Monster's HP: #{monster.health}".colorize(:red)
            puts ""
            puts ""
            sleep(3)
        elsif atk == "2"
            mp = player.second_mana
            player.mana -= mp  
            dmg = player.second_attack
            monster.health -= dmg 
            puts ""
            puts "You dealt #{dmg} damage!"
            puts ""
            puts "Remaining MP: #{self.player.mana}".colorize(:blue)
            puts ""
            puts "Monster's HP: #{monster.health}".colorize(:red)
            puts ""
            puts ""
            sleep(3)
        elsif atk == "3"
            mp = player.third_mana
            dmg = player.third_attack
            monster.health -= dmg 
            player.mana -= mp 
            puts ""
            puts "You dealt #{dmg} damage!"
            puts ""
            puts "Remaining MP: #{self.player.mana}".colorize(:blue)
            puts ""
            puts "Monster's HP: #{self.monster.health}".colorize(:red)
            puts ""
            puts ""
            sleep(3)
        elsif atk == "exit"
            self.exit_game
        else 
            puts ""
            puts "#{self.player_name}, you really only have three attacks to choose from."
            puts ""
            puts "It's not that hard to choose. Please try again."
            sleep(3)
            choosing_attack
        end 
    end 

    def player_turn 
        counter = 0
        while counter < 7 
            self.player_turn_choice
            counter += 1
            break if self.monster.health == 0 || self.over?
            self.monster_turn
        end 

        if monster.health == 0
            self.monster_dies
        elsif counter == 7 && monster.health > 0
            self.monster_becomes_friend
        elsif over?
            over?
        else
            false 
        end 
    end 

    def monster_dies
        sleep(3)
        player.increase_evilness_by_2
        puts self.monster.death_cry
        puts "W O W ! You defeated the monster!"
        puts ""
        puts "Well, now your evilness level is #{player.evilness}! \n"
        puts ""
        puts "What could go wrong?"
        puts ""
        sleep(3)
    end 

    def monster_becomes_friend
        self.player.friends_made << self.monster 
        puts ""
        puts "Some time has passed and the Monster realizes that you aren't trying to kill it."
        puts ""
        puts "The Monster thinks you're kind and stops fighting you."
        puts ""
        sleep(4)
        puts "The Monster becomes your friend instead!"
        puts ""
        puts "Sweet!"
        puts ""
    end 
    

    def monster_turn
        puts self.monster.reply
        atk = self.monster.attack
        player.health -= atk 
        puts "#{self.monster.name} dealt #{atk} damage to you! OUCH!"
        puts ""
        puts "Your HP: #{self.player.health}".colorize(:red)
        puts ""
    end 

    #this should be checked every turn the user is fighting a monster
    def over?
        if self.death?
            self.death?
        elsif self.friendly_ending?
            self.friendly_ending?
        elsif self.bad_ending?
            self.bad_ending?
        elsif so_sad_ending?
            self.so_sad_ending?
        else 
            false 
        end 
    end 

    def so_sad_ending? 
        if self.player.happiness == 0
            self.restart?
        end 
    end 

    def restart?
        puts ""
        puts "Would you like to restart your adventure?"
        puts ""
        puts "Yes or No"
        a = gets.strip.downcase 
        if a == "yes" || a == "ya" || a == "y"
            RubytopiaGame.new 
        elsif a == "no" || a == "n" 
            puts "Oh. Okay then. I won't take it personally. See you around?"
        else 
            puts "So... was that a 'yes' or a 'no'?" 
            self.restart?
        end 
    end 
    
    def death? #ending 1
        if self.player.death?
            puts "Your adventure was aight. \n"
            puts "Nothing to brag about. \n"
            self.restart?
        end 
    end 

    #these methods should be cchecked every time a battle ends 
    def friendly_ending? #ending 2
        if self.player.friends_made_count == 5 
            puts "Your journey comes to an end, as you realize you have work tomorrow. \n"
            puts "As you are about to walk through the exit portal, \n"
            puts "all of the friends that you've made today came to bid farewell. \n"
            self.player.friends_made.each {|friend| puts "#{friend.name} said: See you around?"}
            sleep(3)
            self.restart?
        end 
    end 
    
    def bad_ending? #ending three
        if self.player.evilness == 10
            puts "I can't believe you are so cruel! \n"
            puts "But you know who loves cruel souls? \n"
            puts "Satan. \n"
            puts "Satan loves your soul so much that he decided to take it from you. \n"
            puts "Now your soul is part of Satan's favorite souls collection. \n"
            puts "Way to go, #{self.player_name}."
            sleep(4)
            self.restart?
        end 
    end 

    def exit_game 
        abort("Goodbye, #{self.player_name}! See you around?")
    end 
end 
