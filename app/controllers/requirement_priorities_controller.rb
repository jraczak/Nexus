class RequirementPrioritiesController < ApplicationController
  # GET /requirement_priorities
  # GET /requirement_priorities.json
  def index
    @requirement_priorities = RequirementPriority.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @requirement_priorities }
    end
  end

  # GET /requirement_priorities/1
  # GET /requirement_priorities/1.json
  def show
    @requirement_priority = RequirementPriority.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @requirement_priority }
    end
  end

  # GET /requirement_priorities/new
  # GET /requirement_priorities/new.json
  def new
    @requirement_priority = RequirementPriority.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @requirement_priority }
    end
  end

  # GET /requirement_priorities/1/edit
  def edit
    @requirement_priority = RequirementPriority.find(params[:id])
  end

  # POST /requirement_priorities
  # POST /requirement_priorities.json
  def create
    @requirement_priority = RequirementPriority.new(params[:requirement_priority])

    respond_to do |format|
      if @requirement_priority.save
        format.html { redirect_to @requirement_priority, :notice => 'Requirement priority was successfully created.' }
        format.json { render :json => @requirement_priority, :status => :created, :location => @requirement_priority }
      else
        format.html { render :action => "new" }
        format.json { render :json => @requirement_priority.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /requirement_priorities/1
  # PUT /requirement_priorities/1.json
  def update
    @requirement_priority = RequirementPriority.find(params[:id])

    respond_to do |format|
      if @requirement_priority.update_attributes(params[:requirement_priority])
        format.html { redirect_to @requirement_priority, :notice => 'Requirement priority was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @requirement_priority.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_priorities/1
  # DELETE /requirement_priorities/1.json
  def destroy
    @requirement_priority = RequirementPriority.find(params[:id])
    @requirement_priority.destroy

    respond_to do |format|
      format.html { redirect_to requirement_priorities_url }
      format.json { head :no_content }
    end
  end
end
