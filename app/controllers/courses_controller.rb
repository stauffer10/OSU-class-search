class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :destroy, :update, :edit]

    def index
        @courses = Course.order(id: "ASC")
    end
    
    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        @course.save
        if @course.save
            flash[:success] = "New course has created"
            redirect_to course_path(@course)
        else 
            render 'new'
        end
    end

    def show
        # Retrieving difficuly score from nested attributes
        @score1 = @course.reviews.where(difficulty: 1).count
        @score2 = @course.reviews.where(difficulty: 2).count
        @score3 = @course.reviews.where(difficulty: 3).count
        @score4 = @course.reviews.where(difficulty: 4).count
        @score5 = @course.reviews.where(difficulty: 5).count

        @chart = {"1 - Easy" => @score1, "2 - Mostly Easy" => @score2, "3 - Kind of hard" => @score3, "4 - Very challenging" => @score4, "5 - Prepare to be wrecked" => @score5}
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        
        flash[:danger] = "Course was deleted"
        redirect_to courses_path
    end

    def edit

    end

    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
            flash[:success] = "Course was updated with reviews"
            redirect_to course_path(@course)
        else
            render 'edit'
        end
    end

    private
    def set_course
        @course = Course.find(params[:id])
    end

    def course_params
        params.require(:course).permit(
            :coursename, 
            :course_content, 
            :prerequisite, 
            :proctoredexams, 
            :groupwork, 
            :textbook, 
            reviews_attributes: [:reviews_content],
        )
    end 
end