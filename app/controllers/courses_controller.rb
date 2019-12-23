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
        @challenge_score = {"1 - Easy" => @score1, "2 - Mostly Easy" => @score2, "3 - Kind of hard" => @score3, "4 - Very challenging" => @score4, "5 - Prepare to be wrecked" => @score5}

        @career1 = @course.reviews.where(benefit: "Yes").count
        @career2 = @course.reviews.where(benefit: "No").count
        @career_benefit = {"1 - Yes" => @career1, "2 - Not really" => @career2}

        @time1 = @course.reviews.where(time_spent: "1-3").count
        @time2 = @course.reviews.where(time_spent: "4-6").count
        @time3 = @course.reviews.where(time_spent: "7-9").count
        @time4 = @course.reviews.where(time_spent: "10-12").count
        @time5 = @course.reviews.where(time_spent: "13-15").count
        @time_spent = {"1-3 hours" => @time1, "4-6 hours" => @time2, "7-9 hours" => @time3, "10-12 hours" => @time4, "13-15 hours" => @time5}


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
            reviews_attributes: [:reviews_content, :difficulty, :benefit, :time_spent],
        )
    end 
end