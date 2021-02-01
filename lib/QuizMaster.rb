require 'pry'

class QuizMaster
    #random event that could happen
    #increases happiness if answer is correct
    #random generator for a question 
    #if happiness gets to 0, game ends???
    #CLI class will check the gets.strip and match answers
    
    def greeting 
        "       Hello, I am Luke the Quiz Master. \n
        My only desire in life is to mess with people's lives \n
        by appearing before them and asking them questions \n
        to test their intelligence. \n
        Today is your lucky day! \n"
    end 

    def question_generator 
        a = rand(9)
        if a == 0
            question_one
        elsif a == 1
            question_two
        elsif a == 2
            question_three 
        elsif a == 3
            question_four
        elsif a == 4
            question_five
        elsif a == 5
            question_six
        elsif a == 6
            question_seven 
        elsif a == 7
            question_eight 
        elsif a == 8
            question_nine 
        end 
    end 
end 


a = QuizMaster.new.creating_attributes