class QuizzesController < ApplicationController
    def index
    @quizzes = Quiz.all
    end
    
    
    def new 
        @quiz = Quiz.all
    end
    
    def edit
    
    end
    
    
    def update
    
    end
        
    def create
    @quiz = Quiz.new(quiz_params)
    @quiz.save
    redirect_to quiz_path(@quiz)
    end
    private
    def quiz_params
    params.require(:quiz).permit(:name, :description)
    end
        
end
