class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end
    
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

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        flash[:notice] = "Course was deleted"
        redirect_to courses_path
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
            flash[:notice] = "Course was updated"
            redirect_to course_path(@course)
        else
            render 'edit'
        end
    end

    private
    def course_params
        params.require(:course).permit(:coursename, :course_content)
    end 
end