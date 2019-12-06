class CoursesController < ApplicationController
    def new
        @courses = Course.new
    end

    def create
        #render plain: params[:course].inspect
        @course = Course.new(course_params)
        @course.save
        redirect_to courses_show(@course)
    end

    def show
        
    end

    private
    def course_params
        params.require(:course).permit(:coursename, :course_content)
    end 
end