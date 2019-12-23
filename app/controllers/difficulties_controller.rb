class DifficultiesController < ApplicationController
    before_action :set_difficulty, only: [:edit, :update, :show, :destroy]

    def index
        @scores = Difficulty.all
    end
    
    def new
        @score = Difficulty.new
    end

    def create
        @score = Difficulty.new(scores_params)
        @score.save
        if @score.save
            flash[:success] = "New score has created"
            redirect_to course_path(@score.course_id)
        else 
            render 'new'
        end
    end

    def show
        @scores = Difficulty.where(course_id: params[:id])
    end

    def destroy
        @score = Difficulty.find(params[:id])
        @score.destroy
        
        flash[:danger] = "Difficulty was deleted"
        redirect_to difficulty_path
    end

    def edit
        
    end

    def update
        if @score.update(scores_params)
            flash[:success] = "Difficulty was updated with scores"
            redirect_to difficulty_path(@score)
        else
            render 'edit'
        end
    end

    private
    def set_difficulty
        @score = Difficulty.find(params[:id])
    end

    def scores_params
        params.require(:difficulty).permit(:difficulty, :course_id)
    end 
end