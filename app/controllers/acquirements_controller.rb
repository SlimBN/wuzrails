class AcquirementsController < ApplicationController
  # GET /acquirements
  # GET /acquirements.json
  def index
    @acquirements = Acquirement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @acquirements }
    end
  end

  # GET /acquirements/1
  # GET /acquirements/1.json
  def show
    @acquirement = Acquirement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @acquirement }
    end
  end

  # GET /acquirements/new
  # GET /acquirements/new.json
  def new
    @acquirement = Acquirement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @acquirement }
    end
  end

  # GET /acquirements/1/edit
  def edit
    @acquirement = Acquirement.find(params[:id])
  end

  # POST /acquirements
  # POST /acquirements.json
  def create
    @acquirement = Acquirement.new(params[:acquirement])

    respond_to do |format|
      if @acquirement.save
        format.html { redirect_to @acquirement, notice: 'Acquirement was successfully created.' }
        format.json { render json: @acquirement, status: :created, location: @acquirement }
      else
        format.html { render action: "new" }
        format.json { render json: @acquirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /acquirements/1
  # PUT /acquirements/1.json
  def update
    @acquirement = Acquirement.find(params[:id])

    respond_to do |format|
      if @acquirement.update_attributes(params[:acquirement])
        format.html { redirect_to @acquirement, notice: 'Acquirement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @acquirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acquirements/1
  # DELETE /acquirements/1.json
  def destroy
    @acquirement = Acquirement.find(params[:id])
    @acquirement.destroy

    respond_to do |format|
      format.html { redirect_to acquirements_url }
      format.json { head :no_content }
    end
  end
end
