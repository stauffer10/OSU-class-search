class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :destroy]

    def index
        @courses = Course.all
        #@reviews = Review.all
    end
    
    def new
        @course = Course.new
        @course.reviews.build
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

    def new_reviews
        @course = Course.new
        @course.reviews.build
    end

    def create_reviews
        @course.reviews.build
        @course.reviews.save
    end

    def show
        @reviews = Review.where(course_id: params[:id])
        #payment_method = params[:payment][:payment_method]
        #reviewsC = params[:reviews][:reviews_content]
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        
        flash[:danger] = "Course was deleted"
        redirect_to courses_path
    end

    # Actually works as create new reviews and keeps current column except for reviews_content
    def edit
=begin
        course = Course.find(params[:id])
        reviews = Review.where(course_id: params[:id])
        @course = Course.new(coursename: course.coursename, course_content: course.course_content, prerequisite: course.prerequisite, proctoredexams: course.proctoredexams, groupwork: course.groupwork, textbook: course.textbook, reviews_attributes: reviews.reviews_content)
        @course.save
        @course.reviews.build
=end
        course = Course.find(params[:id])
        @course = Course.new(coursename: course.coursename, course_content: course.course_content, prerequisite: course.prerequisite, proctoredexams: course.proctoredexams, groupwork: course.groupwork, textbook: course.textbook)
        @course.save
        @course.reviews.new
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
        params.require(:course).permit(:coursename, :course_content, :prerequisite, :proctoredexams, :groupwork, :textbook, reviews_attributes: [:reviews_content])
    end 

    def review_params
        params.require(:create_reviews).permit(reviews_attributes: [:reviews_content])
    end
end