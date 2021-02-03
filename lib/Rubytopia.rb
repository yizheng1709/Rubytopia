class RubytopiaGame 
    
    attr_accessor :player_name, :monster, :player, :background   

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
        puts "Hello, player!".colorize(:yellow)
        puts ""
        puts "What is your name?".colorize(:yellow)
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
        puts "5. Vampire"
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
        elsif race_choice == "5" || race_choice == "vampire" 
            self.create_vampire
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
        puts "💎 Welcome to Rubytopia, #{self.player_name}! 💎".colorize(:yellow)
        puts ""
        puts "You've chosen to be part of the Giant Race."
        puts ""
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
    
    def create_elf 
        self.player = Elf.new
        puts "💎 Welcome to Rubytopia, #{self.player_name}!💎".colorize(:yellow)
        puts ""
        puts "You've chosen to be part of the Elf Race."
        sleep(3)
        puts "As an Elf, your ❤  is purest amongst other races, so you are able to channel your mana more efficiently."
        puts ""
        puts "You are admired for your elegance and grace."
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
        puts "💎 Welcome to Rubytopia, #{self.player_name}! 💎".colorize(:yellow)
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

    def create_jinook 
        self.player = Jinook.new
        puts "💎 Welcome to Rubytopia, #{self.player_name}! 💎".colorize(:yellow)
        puts ""
        puts "You've chosen to be part of the Jinook Race, the race of perfect dads."
        puts ""
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

    def create_vampire 
        self.player = Vampire.new
        puts "💎 Welcome to Rubytopia, #{self.player_name}! 💎".colorize(:yellow)
        puts ""
        puts "You've chosen to be part of the Vampire Race, the race that embodies sexiness."
        puts ""
        sleep(3)
        puts "As a Vampire, you are incredibly attractive, supposedly."
        puts ""
        puts "However, beauty is in the eye of the beholder."
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
        sleep(3)
        puts "Which mytholgical land would you like to visit?".colorize(:yellow)
        puts ""
        puts "The most popular choices for Rubytopian citizens have been:".colorize(:yellow)
        puts ""
        puts "Themyscira".colorize(:yellow)
        puts ""
        puts "Camelot".colorize(:yellow)
        puts ""
        puts "Atlantis".colorize(:yellow)
        puts ""
        puts "Hell".colorize(:yellow)
        puts ""
        puts "Asgard".colorize(:yellow)
        puts ""
        puts "However, feel free to take the road less traveled and go somewhere less popular.".colorize(:yellow)
        puts ""
        choice = gets.strip 
        if MythPlace.all.find {|place| place.name.downcase == choice.downcase} 
            self.background = MythPlace.all.find {|place| place.name.downcase == choice.downcase}
            puts "Splendid choice! You've chosen to explore #{background.name}."
            puts ""
            sleep(1)
            info_about_background
        elsif choice == "" || choice == nil 
            puts "Please choose a place."
            self.setting_the_background
        else 
            puts "Please remember how to spell the name of the place."
            puts ""
            puts ""
            sleep(1)
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

    def first_event_setup 
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

    def event_setup 
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
        num = rand(7) 
        if num == 0
            goblin_encounter 
        elsif num == 1
            dragon_encounter 
        elsif num == 2
            karen_encounter
        elsif num == 3
            santa_encounter
        elsif num == 4
            witch_encounter
        elsif num == 5
            sorcerer_encounter
        else
            imp_encounter
        end 
    end 

    def quizmaster_generator
        quiz = QuizMaster.new 
        puts quiz.appearance
        sleep(4)
        puts quiz.greeting 
        sleep(4)
        a = rand(17)
        puts ""
        puts "This is the question he asks:".colorize(:yellow)
        puts ""
        puts quiz.question[a]
        input = gets.strip.downcase 
        if input == quiz.answer[a].downcase 
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
        puts "Amazing! Your answer is correct, so Luke the Quiz Master left you alone.".colorize(:yellow)
        puts ""
        sleep(2)
        puts "You feel so smart that your happiness increased by 1 point!".colorize(:yellow)
        puts ""
        puts "Happiness: #{self.player.happiness}".colorize(:yellow)
        puts ""
        puts "(Max Happiness is 10)".colorize(:yellow)
        sleep(3)
    end 

    def wrong_answer 
        self.player.decrease_happiness_by_1
        puts ""
        puts "Luke the Quiz Master laughs at your wrong answer.".colorize(:blue)
        puts ""
        sleep(2)
        puts "You're upset about giving the incorrect answer. Your happiness decreased by 1 point.".colorize(:blue)
        puts ""
        puts "Happiness: #{self.player.happiness}".colorize(:blue)
        sleep(3)
    end 

    def goblin_encounter
        self.monster = Goblin.new
        puts ""
        puts "You've encountered a Goblin! His appearance is just..."
        puts ""
        puts "Let's just say, he wouldn't last long on The Bachelorette."
        puts ""
        puts "The Goblin shyly smiles and waves at you."
        puts ""
        sleep(3)
    end  

    def imp_encounter
        self.monster = Imp.new
        puts ""
        puts "You've encountered an Imp! Well, meh. He looks weak."
        puts ""
        puts "The Imp thinks you're blocking his path. Is he trying to pick a fight?"
        puts ""
        sleep(3)
    end  

    def dragon_encounter
        self.monster = Dragon.new  
        puts ""
        puts "You've encountered not just any Dragon, but a sassy one!"
        puts ""
        puts "*The Dragon farts in front of you.*"
        puts ""
        puts "The putrid smell is strong enough to make you forget your own name."
        puts ""
        sleep(2)
    end 

    def karen_encounter
        self.monster = Karen.new 
        puts ""
        puts "Today is not your day! You've encountered a mighty Keh-Rhan!"
        puts ""
        puts "The monstrous Keh-Rhan makes your knees tremble. Luckily, you're not at work today!"
        puts ""
        sleep(2)
    end 

    def santa_encounter
        self.monster = Santa.new 
        puts ""
        puts "You will have a sad holiday! It's a Fake Santa!"
        puts ""
        puts "His pot belly amuses you."
        puts ""
        sleep(2)
    end 

    def witch_encounter
        self.monster = Witch.new 
        puts ""
        puts "#{monster.name} says:"
        puts ""
        puts "'Double, double toil and trouble;"
        puts ""
        puts "Fire burn and caldron bubble.'"
        puts ""
        puts "Have you seen this Witch before?"
        puts ""
        sleep(2)
    end 

    def sorcerer_encounter
        self.monster = Sorcerer.new 
        puts ""
        puts "#{monster.name} says:"
        puts ""
        puts "'In his house at R'lyeh, dead Cthulhu waits dreaming.'"
        puts ""
        puts "Sorcerers are known for creeping up on adventurers in #{self.background.name}."
        puts ""
        sleep(2)
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
            self.player_turn 
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
        sleep(3)
    end 

    def battle 
        puts ""
        puts "You've decided to battle! Great!"
        puts ""
        puts monster.battle_cry 
        puts ""
    end 

    def list_of_battle_choices
        puts "What will you do? (1-4)" 
        puts ""
        puts "1. Drink HP potion (+10 HP)".colorize(:red)
        puts "2. Drink MP potion (+10 MP)".colorize(:blue)
        puts "3. Attack"
        puts "4. Ask the monster to be friends...?".colorize(:green)
    end 

    def player_turn_choice
        list_of_battle_choices
        choice = gets.strip.downcase 
        if choice == "1" 
            self.hp_pot_choice
        elsif choice == "2" 
            self.mp_pot_choice
        elsif choice == "3" 
            if self.player.check_mana
                self.no_more_mana
            end 
            self.choosing_attack
        elsif choice == "4" 
            puts self.player.be_friends
            sleep(3)
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

    def no_more_mana
        puts ""
        puts "You don't have any Mana left! Can't you see?".colorize(:blue)
        puts ""
        puts "Perhaps you should rethink your choice.".colorize(:blue)
        puts ""
        sleep(3)
        self.player_turn_choice
    end 


    def mp_pot_choice
        if !self.player.check_mp_pot
            self.player.drink_mana_potion
            puts ""
            puts "You've decided to drink a Mana potion.".colorize(:blue)
            puts ""
            puts "MP +10".colorize(:blue)
            puts "MP: #{player.mana}".colorize(:blue)
            puts "MP pots left: #{self.player.mp_pots}".colorize(:blue)
            puts ""
            sleep(3)
        else 
            puts ""
            puts "Shame. You're out of MP potions."
            puts ""
            puts "Choose again."
            puts ""
            sleep(3)
            player_turn_choice
        end 
    end 

    def hp_pot_choice
        if !self.player.check_hp_pot
            self.player.drink_health_potion
            puts ""
            puts "You've decided to drink a Health potion.".colorize(:red)
            puts ""
            puts "HP +10".colorize(:red)
            puts "HP: #{player.health}".colorize(:red)
            puts "HP pots left: #{self.player.hp_pots}".colorize(:red)
            puts ""
            sleep(3)
        else 
            puts ""
            puts "Shame. You're out of HP potions.".colorize(:red)
            puts ""
            puts "Choose again."
            puts ""
            sleep(3)
            player_turn_choice
        end 
    end 

    def display_player_mana_and_monster_health
        puts ""
        puts "Remaining MP: #{self.player.mana}".colorize(:blue)
        puts ""
        puts "Monster's HP: #{monster.health}".colorize(:red)
        puts ""
        puts ""
    end

    def choosing_attack  
        puts ""
        puts player.set_of_attacks
        puts ""
        puts "current MP: #{self.player.mana}".colorize(:blue)
        puts ""
        atk = gets.strip
        if atk == "1"
            mp = player.first_mana
            player.mana -= mp
            dmg = player.first_attack 
            monster.health -= dmg 
            puts ""
            puts "You dealt #{dmg} damage!"
            self.display_player_mana_and_monster_health
            sleep(3)
        elsif atk == "2"
            mp = player.second_mana
            player.mana -= mp  
            dmg = player.second_attack
            monster.health -= dmg 
            puts ""
            puts "You dealt #{dmg} damage!"
            self.display_player_mana_and_monster_health
            sleep(3)
        elsif atk == "3"
            mp = player.third_mana
            dmg = player.third_attack
            monster.health -= dmg 
            player.mana -= mp 
            puts ""
            puts "You dealt #{dmg} damage!"
            self.display_player_mana_and_monster_health
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

    def monster_or_player_death
        self.monster.health == 0 || self.player.health == 0
    end 


    def player_turn 
        counter = 0
        while counter < 7 
            self.player_turn_choice
            break if self.monster_or_player_death
            self.monster_turn
            break if self.monster_or_player_death
            counter += 1
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
        puts ""
        puts "W O W ! You defeated the monster!".colorize(:red)
        puts ""
        puts "Well, now your evilness level is #{player.evilness}!".colorize(:red)
        puts ""
        puts "What could go wrong?".colorize(:red)
        puts ""
        sleep(3)
    end 

    def monster_becomes_friend
        self.player.friends_made << self.monster 
        puts ""
        puts "Some time has passed and the Monster realizes that you aren't trying to kill it.".colorize(:green)
        puts ""
        puts "The Monster thinks you're kind and stops fighting you.".colorize(:green)
        puts ""
        sleep(3)
        puts "The Monster becomes your friend instead!".colorize(:green)
        puts ""
        puts "Sweet! This is the amount of friends you have in this world: #{self.player.friends_made_count}".colorize(:green)
        puts ""
    end 

    def monster_turn
        puts ""
        puts self.monster.reply
        puts ""
        atk = self.monster.attack
        player.health -= atk 
        puts "#{self.monster.name} dealt #{atk} damage to you! OUCH!".colorize(:red)
        puts ""
        puts "Your HP: #{self.player.health}".colorize(:red)
        puts ""
    end 

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
            puts ""
            puts "You died from sadness.".colorize(:blue)
            puts ""
            puts "Yep... What a rare way to go, but you managed to do it.".colorize(:blue)
            puts ""
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
            sleep(1)
            RubytopiaGame.new.start 
        elsif a == "no" || a == "n" 
            self.exit_game
        else 
            puts "So... was that a 'yes' or a 'no'?" 
            self.restart?
        end 
    end 
    
    def death? 
        if self.player.death?
            puts ""
            puts "LOL How did you die?"
            puts ""
            self.restart?
        end 
    end 

    def friendly_ending? 
        sleep(3)
        if self.player.friends_made_count == 5 
            puts "Your journey comes to an end, as you realize you have work tomorrow.".colorize(:green)
            puts ""
            puts "As you are about to walk through the exit portal,".colorize(:green)
            puts ""
            puts "all of the friends that you've made today came to bid farewell.".colorize(:green)
            puts ""
            self.player.friends_made.each {|friend| puts "#{friend.name} said: 'See you around?'"}
            puts ""
            puts "Good job, #{player_name}!"
            sleep(3)
            self.restart?
        end 
    end 
    
    def bad_ending? 
        if self.player.evilness == 10
            puts "I can't believe you are so cruel!".colorize(:red)
            puts ""
            puts "But you know who loves cruel souls?".colorize(:red)
            sleep(2)
            puts "Satan.".colorize(:red)
            puts ""
            sleep(1)
            puts "Satan loves your soul so much that he decided to take it from you.".colorize(:red)
            puts ""
            puts "Now your soul is part of Satan's favorite souls collection.".colorize(:red)
            puts ""
            puts "Way to go, #{self.player_name}.".colorize(:red)
            sleep(2)
            self.restart?
        end 
    end 

    def exit_game 
        abort("Goodbye, #{self.player_name}! See you around?")
    end 
end 
