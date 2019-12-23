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
            difficulty_scores_attributes: [:difficulty],
        )
    end 
end