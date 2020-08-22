class QuestionsController < ApplicationController
    
    def show
        @question = Question.find(params[:id])
    end
    
    def index
        @questions = Question.all
    end
    def edit
        @question = Question.find(params[:id])
      end

    def update
        @question = Question.find(params[:id])
        if @question.update(question_params)
          redirect_to @question
        else
          render 'edit'
        end
    end

    def destroy
        @question = Question.find(params[:id])
        @question.delete
          redirect_to questions_path
    end

    def new
        @question = Question.new
    end

    def create
        @question = Question.new(question_params)
        @question.save
        redirect_to @question
    end
       
    private def question_params
        params.require(:question).permit(:title, :description)
    end
end
