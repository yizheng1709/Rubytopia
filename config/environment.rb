#race
require_relative '../lib/Elf.rb'
require_relative '../lib/Giant.rb'
require_relative '../lib/Human.rb'
require_relative '../lib/Jinook.rb'
require_relative '../lib/Race.rb'
require_relative '../lib/Vampire.rb'

#monster
require_relative '../lib/Dragon.rb'
require_relative '../lib/Goblin.rb'
require_relative '../lib/Imp.rb'
require_relative '../lib/Karen.rb'
require_relative '../lib/Santa.rb'
require_relative '../lib/Witch.rb'

#misc event
require_relative '../lib/QuizMaster.rb'

#CLI and Scraper
require_relative '../lib/MythPlace.rb'
require_relative '../lib/Rubytopia.rb'
require_relative '../lib/Scraper.rb'

#gems
require 'colorize'

RubytopiaGame.new.start