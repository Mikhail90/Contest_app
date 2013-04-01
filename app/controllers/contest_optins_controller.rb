class ContestOptinsController < ApplicationController
  # GET /contest_optins
  # GET /contest_optins.json
  def index
    @contest_optins = ContestOptin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contest_optins }
    end
  end

  # GET /contest_optins/1
  # GET /contest_optins/1.json
  def show
    @contest_optin = ContestOptin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contest_optin }
    end
  end

  # GET /contest_optins/new
  # GET /contest_optins/new.json
  def new
    @contest_optin = ContestOptin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contest_optin }
    end
  end

  # GET /contest_optins/1/edit
  def edit
    @contest_optin = ContestOptin.find(params[:id])
  end

  # POST /contest_optins
  # POST /contest_optins.json
  def create
    @contest_optin = ContestOptin.new(params[:contest_optin])

    respond_to do |format|
      if @contest_optin.save
        format.html { redirect_to @contest_optin, notice: 'Contest optin was successfully created.' }
        format.json { render json: @contest_optin, status: :created, location: @contest_optin }
      else
        format.html { render action: "new" }
        format.json { render json: @contest_optin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contest_optins/1
  # PUT /contest_optins/1.json
  def update
    @contest_optin = ContestOptin.find(params[:id])

    respond_to do |format|
      if @contest_optin.update_attributes(params[:contest_optin])
        format.html { redirect_to @contest_optin, notice: 'Contest optin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contest_optin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contest_optins/1
  # DELETE /contest_optins/1.json
  def destroy
    @contest_optin = ContestOptin.find(params[:id])
    @contest_optin.destroy

    respond_to do |format|
      format.html { redirect_to contest_optins_url }
      format.json { head :no_content }
    end
  end
end
