#add current monster to friend list if monster does not die
#if you cannot kill mosnter within 10 turns, the monster thinks you're super nice
# code the ABORT method


class RubytopiaGame #this is the only clss that should have puts, and method invocation 
    
    attr_accessor :player_name, :monster, :player, :background   
    #monster should record his own health
   #if friends_made.count == 5, your journey comes to an end and your friends bid you farewell
    

    def start
        Scraper.new.make_mythplace
        self.greeting_user
        self.selecting_race
        sleep(4)
        self.setting_the_background 
        sleep(5)
        self.first_event_setup
        sleep(8)
        self.event_generator until self.over?
        sleep(4)

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
        1. Giant \n
        2. Elf \n
        3. Human"
        race_choice = gets.strip
        if race_choice.include?("1") || race_choice == "giant" || race_choice == "Giant"
            self.create_giant
        elsif race_choice.include?("2") || race_choice == "elf" || race_choice == "Elf"
            self.create_elf
        elsif race_choice.include?("3") || race_choice == "human" || race_choice == "Human"
            self.create_human
        else
            puts "It's not hard to select a race.\n
            Please try again.\n"
            selecting_race 
        end 
    end 

    def create_giant 
        self.player = Giant.new(self.player_name)
        puts "       💎 Welcome to Rubytopia, #{self.player_name}! 💎\n
        You've chosen to be part of the Giant Race. \n
        As a Giant, you have incredible stamina, \n
        but you have little idea of what Mana is or how to channel it well. \n
        However, that does not stop you from being a happy Giant. \n
        HP: #{player.health} (MAX) \n
        MP: #{player.mana} (MAX) \n\n"
    end 
    
    def create_elf 
        self.player = Elf.new(self.player_name)
        puts "      💎 Welcome to Rubytopia, #{self.player_name}!💎 \n
        You've chosen to be part of the Elf Race. \n
        As an Elf, your ❤  is purest amongst other races, \n 
        so you are able to channel your mana more efficiently. \n
        HP: #{player.health} (MAX) \n
        MP: #{player.mana} (MAX) \n\n"
    end 

    def create_human 
        self.player = Human.new(self.player_name)
        puts "#{self.player_name}, seriously? \n
        Why would you want to be a Human \n
        when you are already one in real life? \n
        But I digress. \n\n
        💎 Welcome to Rubytopia, #{self.player_name}! 💎\n
        You've chosen to be part of the Human Race. \n
        As a Human, you have average stats amongst other races. \n
        
        HP: #{player.health} (MAX) \n
        MP: #{player.mana} (MAX) \n\n" 
    end 

    def setting_the_background
        puts "        Rubytopia is a land that is know for its mysterious portal. \n
        This portal can take you to any mythological land that you so desire. \n
        Today, it's your turn to play with this mysterious portal! \n
        Which mytholgical land would you like to visit? \n
        The most popular choices for Rubytopian citizens have been: \n
        Themyscira \n
        Camelot \n
        Atlantis \n
        Hell \n
        Asgard \n
        But feel free to take the road less traveled \n
        and go somewhere less popular. \n \n"
        choice = gets.strip 
        if MythPlace.all.find {|place| place.name.downcase == choice.downcase} 
            self.background = MythPlace.all.find {|place| place.name.downcase == choice.downcase}
            puts "Splendid choice! You've chosen to explore #{background.name}. \n"
            sleep(1)
            info_about_background
        else 
            puts "Please remember how to spell the place.\n"
            sleep(2)
            self.setting_the_background 
        end  
    end 

    def info_about_background
        puts "Would you like to learn something about #{self.background.name}?"
        input = gets.strip.downcase 
        if input == "yes" || input == "y"
            puts "Did you know that #{background.name} is \n 
            #{background.description} \n
            Well, now you do."
        elsif input == "no" || input == "n"
            puts "      Well, *someone* isn't open to being a student. Okay then. \n
            I will try to not take it personally."
        elsif input == "exit"
            self.exit_game
        else 
            puts "It's a close-ended question. Please try again."  
            info_about_background
        end 
    end 

    def first_event_setup #only in the first event_encounter
        puts "You stepped through the portal and entered #{self.background.name}."
        puts "Allow me to tell you this, #{self.player_name}. \n
        You control your own fate. You will be the one \n
        to decide how your adventure will end. \n
        If there is a time when you want to leave this world, \n
        let me know by typing 'exit'."
    end 

    def event_setup #this will be right before every event_encounter
        puts "As you continue to explore the wonderful place of #{self.background.name}, \n
        you had to make an unexpected stop."
    end 

    def event_generator 
        self.event_setup
        a = rand(2)
        if a == 0
            self.monster_generator
            self.run_or_fight
        elsif a == 1
            quizmaster_generator 
        end 
    end 

    def monster_generator 
        num = rand(3) #add to this as I build more monsters
        if num == 0
            goblin_encounter 
        elsif num == 1
            dragon_encounter 
        elsif num == 2
            karen_encounter
        end 
    end 

    def quizmaster_generator
        quiz = QuizMaster.new 
        puts quiz.greeting
        a = rand(9)
        puts quiz.question[a]
        input = gets.strip.downcase 
        if quiz.answer[a].include?(input)
            self.correct_answer
        elsif input == "exit"
            self.exit_game
        elsif !quiz.answer[a].include?(input)
            self.wrong_answer
        end 
    end   
   
#question class; question attribute and answer attribute
#store in class variable. #sample method 
#every instance of question has attribute of question and answer 
#start with a hash of questions and answer
#create new instance of question/answer with hash
    def correct_answer
        self.player.increase_happiness_by_1
        puts "Amazing! Your answer is correct, \n
        so Luke the Quiz Master left you alone. \n
        You feel so smart that your happiness increased by 1 point! \n
        Happiness: #{self.player.happiness}"
    end 

    def wrong_answer 
        self.player.decrease_happiness_by_1
        puts "Luke the Quiz Master laughs at your wrong answer."
        puts "You're upset about giving the incorrect answer."
        puts "Happiness: #{self.player.happiness}"
    end 

    def goblin_encounter
        self.monster = Goblin.new
        puts "You've encountered a goblin! \n
        The Goblin shyly smiles and waves at you. \n"
    end  

    def dragon_encounter
        self.monster = Dragon.new  
        puts "Just your luck! You've encountered a fierce and sassy dragon! Yikes! \n
        *The Dragon farted.* \n
        The putrid smell is strong enough to make you forget your own name. \n"
    end 

    def karen_encounter
        self.monster = Karen.new 
        puts "Today is not your day! You've encountered a mighty Keh-Rhan! \n
        The monstrous Keh-Rhan makes your knees tremble. \n"
    end 

    # def monster_encounter 
    #     monster_generator
    #     run_or_fight
    # end 

    def run_or_fight
        puts "What will you do?"
        puts "Run or Fight?"
        choice = gets.strip 
        if self.run_or_fight.include?("run") || self.run_or_fight.include?("Run")
            self.run_away
        elsif run_or_fight.include?("fight") || self.run_or_fight.include?("Fight")
            self.battle #double check the logic of battle method
        else 
            puts "There is no third choice, sorry."
            puts "Please do try to stick with the choices that I've given you."
            self.run_or_fight
        end 
    end 

    def monster_reply
        if self.monster.health > 0
            puts self.monster.reply 
        end 
    end 

    def run_away
        puts "You've decided to run away...?! Wow, okay."
    end 

    def battle #### MODIFY METHOD
        puts "You've decided to battle! Great!"
        puts monster.battle_cry 
        #monsters begs and fights back only 
        until over? #until the 
            self.player_turn
            
            # self.monster_turn player_turn and monster_turn  
        end  
    end 

    # LOGIC for gameplay #event_generator until ending
    # event_generator until over?

    # monster_generator [done]
    # run_or_fight [done]
    # if run_away,
    #   self.run_away 
    #   event_generator
    # elsif fight,
    #   # "You've decided to battle! Great!"
    #   #monster.battle_cry 
    #   #ask_player_for_battle_turn_choice
    # execute the choice received from player
    # show results
    # check if monster.health == 0 ; friendly_ending/bad-ending
    # if monster.health != 0
    #   monster.reply
    # elsif monster.health == 0
    #   monster.death_cry
    # monster's turn
    # monter randomly attacks
    # displays the result of monster's attack
    #
    
    def list_of_battle_choices
        puts "What will you do? (1-4) \n 
        1. Drink HP potion (+10 HP) \n
        2. Drink MP potion (+10 MP) \n
        3. Attack \n
        4. Ask the monster to be friends...? \n"
    end 

    def player_turn_choice
        list_of_battle_choices
        choice = gets.strip 
        if choice.include?("1") || choice.include?("HP") || choice.include?("hp")
            self.player.drink_health_potion
            puts "HP +10 \n
            HP: #{player.health}"
        elsif choice.include?("2") || choice.include?("MP") || choice.include?("mp")
            self.player.drink_mana_potion
            puts "MP +10 \n
            MP: #{player_mana}"
        elsif choice.include?("3") || choice == "attack" || choice == "Attack"
            self.choosing_attack
        elsif choice.include?("4") || choice.include?("nothing")
            self.player.do_nothing
        elsif choice == "exit"
            self.exit_game
        else 
            puts "Umm, #{player_name}... It's not hard to choose from 1-4. \n
            Please try again."
            self.player_turn_choice
        end 
    end  

    def choosing_attack  #part of player_turn_choice
        puts player.set_of_attacks
        atk = gets.strip
        if atk.include?("1")
            dmg = player.first_attack #this section is repetitive
            monster.health -= dmg  #could write as its own method
            puts "You dealt #{dmg} damage! \n
            Monster's HP: #{monster.health}"
        elsif atk.include?("2")
            dmg = player.second_attack
            monster.health -= dmg 
            puts "You dealt #{dmg} damage! \n
            Monster's HP: #{monster.health}"
        elsif atk.include?("3")
            dmg = player.third_attack
            monster.health -= dmg 
            puts "You dealt #{dmg} damage! \n
            Monster's HP: #{self.monster.health}"
        elsif atk == "exit"
            self.exit_game
        else 
            puts "#{self.player_name}, you really only have three attacks to choose from. \n
            It's not that hard to choose. Please try again."
            choosing_attack
        end 
    end 

    def player_turn 
        #loop so that once the amount of turns is > 7, the monster becomes friend?
        self.player_turn_choice
        if monster.health == 0
            player.increase_evilness_by_2
            puts self.monster.death_cry
            puts "W O W ! You defeated the monster!"
            puts "Well, now your evilness level is #{player.evilness}! \n
            What could go wrong?"
        elsif monster.health > 0
            puts self.monster.reply
            self.monster_turn 
        end 
    end 

    def monster_turn
        atk = self.monster.attack
        player.health -= atk 
        puts "#{self.monster.name} dealt #{atk} damage to you! \n
        Your HP: #{self.player.health} \n"
    end 

    #this should be checked every turn the user is fighting a monster
    def over?
        if self.death? || self.friendly_ending? || self.bad_ending?
            true 
        end 
    end 

    def restart?
        puts "Would you like to restart your adventure? \n
        Yes or No \n"
        a = gets.strip.downcase 
        if a == "yes" || a == "ya" || a == "y"
            RubytopiaGame.new 
        elsif a == "no" || "n" 
            puts "Oh. Okay then. I won't take it personally. See you around?"
        else 
            puts "So... was that a 'yes' or a 'no'?" 
            self.restart?
        end 
    end 

    
    def death? #ending 1
        if self.player.death?
            puts "Your adventure was aight. \n
            Nothing to brag about. \n"
            self.restart?
        end 
    end 

    #these methods should be cchecked every time a battle ends 
    def friendly_ending? #ending 2
        if self.player.friends_made_count == 5 
            puts "Your journey comes to an end, as you realize you have work tomorrow. \n
            As you are about to walk through the exit portal, \n
            all of the friends that you've made today came to bid farewell. \n"
            self.player.friends_made.each {|friend| puts "#{friend.name} said: See you around?"}
            self.restart?
        end 
    end 
    
    def bad_ending? #ending three
        if self.player.evilness == 10
            puts "I can't believe you are so cruel! \n
            But you know who loves cruel souls? \n
            Satan. \n
            Satan loves your soul so much that he decided to take it from you. \n
            Now your soul is part of Satan's favorite souls collection. \n
            Way to go, #{self.player_name}."
            self.restart?
        end 
    end 

    def exit_game 
        abort("Goodbye, #{self.player_name}! See you around?")
    end 
end 
