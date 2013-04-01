class OptinpartnersController < ApplicationController
  # GET /optinpartners
  # GET /optinpartners.json
  def index
    @optinpartners = Optinpartner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @optinpartners }
    end
  end

  # GET /optinpartners/1
  # GET /optinpartners/1.json
  def show
    @optinpartner = Optinpartner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @optinpartner }
    end
  end

  # GET /optinpartners/new
  # GET /optinpartners/new.json
  def new
    @optinpartner = Optinpartner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @optinpartner }
    end
  end

  # GET /optinpartners/1/edit
  def edit
    @optinpartner = Optinpartner.find(params[:id])
  end

  # POST /optinpartners
  # POST /optinpartners.json
  def create
    @optinpartner = Optinpartner.new(params[:optinpartner])

    respond_to do |format|
      if @optinpartner.save
        format.html { redirect_to @optinpartner, notice: 'Optinpartner was successfully created.' }
        format.json { render json: @optinpartner, status: :created, location: @optinpartner }
      else
        format.html { render action: "new" }
        format.json { render json: @optinpartner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /optinpartners/1
  # PUT /optinpartners/1.json
  def update
    @optinpartner = Optinpartner.find(params[:id])

    respond_to do |format|
      if @optinpartner.update_attributes(params[:optinpartner])
        format.html { redirect_to @optinpartner, notice: 'Optinpartner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @optinpartner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optinpartners/1
  # DELETE /optinpartners/1.json
  def destroy
    @optinpartner = Optinpartner.find(params[:id])
    @optinpartner.destroy

    respond_to do |format|
      format.html { redirect_to optinpartners_url }
      format.json { head :no_content }
    end
  end
end
