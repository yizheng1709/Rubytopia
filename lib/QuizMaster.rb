require 'pry'

class QuizMaster
    #random event that could happen
    #increases happiness if answer is correct
    #random generator for a question 
    #if happiness gets to 0, game ends???
    #CLI class will check the gets.strip and match answers
    
    attr_accessor :question, :answer

    def initialize
        self.question = [
        "What is the square root of 225?",
        "What year did World War II end?", 
        "Who is the 46th president of the United States?",
        "What is 11 times 11?",
        "Who is the main protagonist of the Pokemon series?", 
        "What do you call a baby cow?",
        "What color do you get when you add blue and yellow?", 
        "Who is the baby with the football-shaped head in Family Guy?", 
        "What is 12 times 12?",
        "The first fireworks were invented in the 7th century in what country?",
        "What was the ancient Egyptian writing system called?",
        "The plural of “moose” is…?",
        "In what country is the famous Taj Mahal located?",
        "What is the capital of New York?",
        "What is the main language spoken in the Canadian province of Quebec?",
        "What is the name of a positively charged subatomic particle that appears in the nucleus of all atoms?",
        "How many days are in a year?"
        ]

        self.answer = [
        "15", "1945", "biden", "121", "ash", "121", "calf", "green", "stewie", "144", "china", "hieroglyphics",
        "moose", "india", "albany", "french", "proton", "365"
        ]
    end 

    def appearance 
        "A plump little man appears in front of you. \n
        He is wearing a purple top hat as well as a purple tuxedo. \n
        Although a small man, he is capable of holding a big cat. \n
        He is petting his cat as he starts to approach you. \n"
    end 

    def greeting
        "He says: \n
        'Hello, I am Luke the Quiz Master. \n
        My only desire in life is to mess with people's lives \n
        by appearing before them and asking them questions \n
        to test their intelligence. \n
        Today is your lucky day! \n
        I would love for you could amuse me with that brain of yours.' \n"
    end 

  
end 

