class ProjectServicesController < ApplicationController
  # GET /project_services
  # GET /project_services.json
  def index
    @project_services = ProjectService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @project_services }
    end
  end

  # GET /project_services/1
  # GET /project_services/1.json
  def show
    @project_service = ProjectService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @project_service }
    end
  end

  # GET /project_services/new
  # GET /project_services/new.json
  def new
    @project_service = ProjectService.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @project_service }
    end
  end

  # GET /project_services/1/edit
  def edit
    @project_service = ProjectService.find(params[:id])
  end

  # POST /project_services
  # POST /project_services.json
  def create
    @project_service = ProjectService.new(params[:project_service])

    respond_to do |format|
      if @project_service.save
        format.html { redirect_to @project_service, :notice => 'Project service was successfully created.' }
        format.json { render :json => @project_service, :status => :created, :location => @project_service }
      else
        format.html { render :action => "new" }
        format.json { render :json => @project_service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_services/1
  # PUT /project_services/1.json
  def update
    @project_service = ProjectService.find(params[:id])

    respond_to do |format|
      if @project_service.update_attributes(params[:project_service])
        format.html { redirect_to @project_service, :notice => 'Project service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @project_service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_services/1
  # DELETE /project_services/1.json
  def destroy
    @project_service = ProjectService.find(params[:id])
    @project_service.destroy

    respond_to do |format|
      format.html { redirect_to project_services_url }
      format.json { head :no_content }
    end
  end
end
