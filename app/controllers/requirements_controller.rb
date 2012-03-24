class RequirementsController < ApplicationController
  before_filter :load_project
  
  def index
    @requirements = Requirement.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @requirements }
    end
  end
  
  def create
    @requirement = @project.requirements.new(params[:requirement])
    if @requirement.save
      redirect_to @project, :notice => "Requirement has been successfully added."
    else
      redirect_to @project, :alert => "Warning! This requirement was not saved."
    end
  end
  
  def edit
    @requirement = Requirement.find(params[:id])
  end
  
  def destroy
    @requirement = @project.requirements.find(params[:id])
    @requirement.destroy
    redirect_to @project, :notice => "Requirement was successfully removed"
  end
  
  private
    def load_project
      @project = Project.find(params[:project_id])
    end
    
end
