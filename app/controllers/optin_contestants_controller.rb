class OptinContestantsController < ApplicationController
  # GET /optin_contestants
  # GET /optin_contestants.json
  def index
    @optin_contestants = OptinContestant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @optin_contestants }
    end
  end

  # GET /optin_contestants/1
  # GET /optin_contestants/1.json
  def show
    @optin_contestant = OptinContestant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @optin_contestant }
    end
  end

  # GET /optin_contestants/new
  # GET /optin_contestants/new.json
  def new
    @optin_contestant = OptinContestant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @optin_contestant }
    end
  end

  # GET /optin_contestants/1/edit
  def edit
    @optin_contestant = OptinContestant.find(params[:id])
  end

  # POST /optin_contestants
  # POST /optin_contestants.json
  def create
    @optin_contestant = OptinContestant.new(params[:optin_contestant])

    respond_to do |format|
      if @optin_contestant.save
        format.html { redirect_to @optin_contestant, notice: 'Optin contestant was successfully created.' }
        format.json { render json: @optin_contestant, status: :created, location: @optin_contestant }
      else
        format.html { render action: "new" }
        format.json { render json: @optin_contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /optin_contestants/1
  # PUT /optin_contestants/1.json
  def update
    @optin_contestant = OptinContestant.find(params[:id])

    respond_to do |format|
      if @optin_contestant.update_attributes(params[:optin_contestant])
        format.html { redirect_to @optin_contestant, notice: 'Optin contestant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @optin_contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optin_contestants/1
  # DELETE /optin_contestants/1.json
  def destroy
    @optin_contestant = OptinContestant.find(params[:id])
    @optin_contestant.destroy

    respond_to do |format|
      format.html { redirect_to optin_contestants_url }
      format.json { head :no_content }
    end
  end
end
