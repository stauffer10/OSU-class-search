class ReviewsController < ApplicationController
    before_action :set_review, only: [:edit, :update, :show, :destroy]

    def index
        @reviews = Review.all
    end
    
    def new
        @course = Course.find(params[:course_id])
        @major = Major.find(params[:major_id])
        @institution = Institution.find(params[:institution_id])

        # must assign the review with a belong_to relationship with course
        @review = @course.reviews.new
        @review.course_id = params[:course_id]
        @review.major_id = params[:major_id]
        @review.institution_id = params[:institution_id]
    end

    def create
        @review = Review.new(review_params)
        @course = Course.find(@review.course_id)
        @review.save
        if @review.save!
            flash[:success] = "New review has been created."
            redirect_to course_path(@course)
        else 
            flash[:error] = "Did not save"
            redirect_to root_path
        end
    end

    def show
        @reviews = Review.where(course_id: params[:id])
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        
        flash[:danger] = "Review was deleted"
        redirect_to course_path(@review.course_id)
    end

    def edit
        
    end

    def update
        if @review.update(review_params)
            flash[:success] = "Review was updated with reviews"
            redirect_to review_path(@review)
        else
            render 'edit'
        end
    end

    private
    def set_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(
            :reviews_content, 
            :difficulty, 
            :benefit, 
            :time_spent, 
            :course_id,
            :major_id,
            :institution_id
        )
    end 
end