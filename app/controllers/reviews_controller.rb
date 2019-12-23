class ReviewsController < ApplicationController
    before_action :set_review, only: [:edit, :update, :show, :destroy]

    def index
        @reviews = Review.all
    end
    
    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.save
        if @review.save
            flash[:success] = "New review has created"
            redirect_to course_path(@review.course_id)
        else 
            render 'new'
        end
    end

    def show
        @reviews = Review.where(course_id: params[:id])
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        
        flash[:danger] = "Review was deleted"
        redirect_to review_path
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
        params.require(:review).permit(:reviews_content, :difficulty, :benefit, :course_id)
    end 
end