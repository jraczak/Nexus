class RequirementTypesController < ApplicationController
  # GET /requirement_types
  # GET /requirement_types.json
  def index
    @requirement_types = RequirementType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @requirement_types }
    end
  end

  # GET /requirement_types/1
  # GET /requirement_types/1.json
  def show
    @requirement_type = RequirementType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @requirement_type }
    end
  end

  # GET /requirement_types/new
  # GET /requirement_types/new.json
  def new
    @requirement_type = RequirementType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @requirement_type }
    end
  end

  # GET /requirement_types/1/edit
  def edit
    @requirement_type = RequirementType.find(params[:id])
  end

  # POST /requirement_types
  # POST /requirement_types.json
  def create
    @requirement_type = RequirementType.new(params[:requirement_type])

    respond_to do |format|
      if @requirement_type.save
        format.html { redirect_to @requirement_type, :notice => 'Requirement type was successfully created.' }
        format.json { render :json => @requirement_type, :status => :created, :location => @requirement_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @requirement_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /requirement_types/1
  # PUT /requirement_types/1.json
  def update
    @requirement_type = RequirementType.find(params[:id])

    respond_to do |format|
      if @requirement_type.update_attributes(params[:requirement_type])
        format.html { redirect_to @requirement_type, :notice => 'Requirement type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @requirement_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_types/1
  # DELETE /requirement_types/1.json
  def destroy
    @requirement_type = RequirementType.find(params[:id])
    @requirement_type.destroy

    respond_to do |format|
      format.html { redirect_to requirement_types_url }
      format.json { head :no_content }
    end
  end
end
