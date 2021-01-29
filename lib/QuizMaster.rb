class QuizMaster

    def question_one 
        "Let's start off simple.\n"
        a = rand(5)
        if a == 0
            "What is the square root of 144?"
        elsif a == 1
            "What is the square root of 81?"
        elsif a == 2
            "What is the square root of 169?"
        elsif a == 3
            "What is the square root of 225?"
        elsif a == 4
            "What is the square root of 49?"
        end 
    end 

    # def question_two 


end 

puts QuizMaster.new.question_one