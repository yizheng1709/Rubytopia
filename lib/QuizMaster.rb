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
        "What is one of the primary colors?", 
        "Who is the baby with the football-shaped head in Family Guy?", 
        "What is 12 times 12?",
        ]

        self.answer = [
        "15", "1945", "biden", "121", "ash", "121", "calf", "blue, yellow, red", "stewie", "144" 
        ]
    end 

    def greeting 
        "       A plump little man appears in front of you. \n
        He is wearing a purple top hat as well as a purple tuxedo. \n
        He says: \n
        'Hello, I am Luke the Quiz Master. \n
        My only desire in life is to mess with people's lives \n
        by appearing before them and asking them questions \n
        to test their intelligence. \n
        Today is your lucky day!' \n"
    end 

  
end 

