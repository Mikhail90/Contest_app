class ContestEntriesController < ApplicationController
  # GET /contest_entries
  # GET /contest_entries.json
  def index
    @contest_entries = ContestEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contest_entries }
    end
  end

  # GET /contest_entries/1
  # GET /contest_entries/1.json
  def show
    @contest_entry = ContestEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contest_entry }
    end
  end

  # GET /contest_entries/new
  # GET /contest_entries/new.json
  def new
    @contest_entry = ContestEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contest_entry }
    end
  end

  # GET /contest_entries/1/edit
  def edit
    @contest_entry = ContestEntry.find(params[:id])
  end

  # POST /contest_entries
  # POST /contest_entries.json
  def create
    @contest_entry = ContestEntry.new(params[:contest_entry])

    respond_to do |format|
      if @contest_entry.save
        format.html { redirect_to @contest_entry, notice: 'Contest entry was successfully created.' }
        format.json { render json: @contest_entry, status: :created, location: @contest_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @contest_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contest_entries/1
  # PUT /contest_entries/1.json
  def update
    @contest_entry = ContestEntry.find(params[:id])

    respond_to do |format|
      if @contest_entry.update_attributes(params[:contest_entry])
        format.html { redirect_to @contest_entry, notice: 'Contest entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contest_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contest_entries/1
  # DELETE /contest_entries/1.json
  def destroy
    @contest_entry = ContestEntry.find(params[:id])
    @contest_entry.destroy

    respond_to do |format|
      format.html { redirect_to contest_entries_url }
      format.json { head :no_content }
    end
  end
end
