class InstitutionsController < ApplicationController
    before_action :set_institution, only: [:show, :destroy, :update, :edit]

    def index
        @institutions = Institution.order(id: "ASC")
    end
    
    def new
        @institution = Institution.new
    end

    def create
        @institution = Institution.new(institution_params)
        @institution.save
        if @institution.save
            flash[:success] = "New institution has been created"
            redirect_to institution_path(@institution)
        else 
            render 'new'
        end
    end

    def show
       @instituion = Institution.find(params[:id])

       #Generate list of courses for this instituion
       # @courses = Course.where("institution_id = ?", params[:institution_id]) 
    end

    def destroy
        @institution = Institution.find(params[:id])
        @institution.destroy
        
        flash[:danger] = "institution was deleted"
        redirect_to institutions_path
    end

    def edit
        @instituion = Institution.find(params[:id])
    end

    def update
        @institution = Institution.find(params[:id])
        if @institution.update(institution_params)
            flash[:success] = "institution information was updated"
            redirect_to institution_path(@institution)
        else
            render 'edit'
        end
    end

    private
    def set_institution
        @institution = Institution.find(params[:id])
    end

    def institution_params
        params.require(:institution).permit(
            :name, 
            :city,
            :state,
            :country,
            :logo
        )
    end 
end