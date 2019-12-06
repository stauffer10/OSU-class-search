class CoursesController < ApplicationController
    def new
        @course = Course.new
    end

    def create
        #render plain: params[:course].inspect
        @course = Course.new(course_params)
        #@course.save
        #redirect_to course_path(@course)

        if @course.save
            flash[:notice] = "New course has created"
            redirect_to course_path(@course)
        else 
            render 'new'
        end
    end

    def show
        @course = Course.find(params[:id])
    end

    private
    def course_params
        params.require(:course).permit(:coursename, :course_content)
    end 
end