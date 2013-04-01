class ContestWinnersController < ApplicationController
  # GET /contest_winners
  # GET /contest_winners.json
  def index
    @contest_winners = ContestWinner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contest_winners }
    end
  end

  # GET /contest_winners/1
  # GET /contest_winners/1.json
  def show
    @contest_winner = ContestWinner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contest_winner }
    end
  end

  # GET /contest_winners/new
  # GET /contest_winners/new.json
  def new
    @contest_winner = ContestWinner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contest_winner }
    end
  end

  # GET /contest_winners/1/edit
  def edit
    @contest_winner = ContestWinner.find(params[:id])
  end

  # POST /contest_winners
  # POST /contest_winners.json
  def create
    @contest_winner = ContestWinner.new(params[:contest_winner])

    respond_to do |format|
      if @contest_winner.save
        format.html { redirect_to @contest_winner, notice: 'Contest winner was successfully created.' }
        format.json { render json: @contest_winner, status: :created, location: @contest_winner }
      else
        format.html { render action: "new" }
        format.json { render json: @contest_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contest_winners/1
  # PUT /contest_winners/1.json
  def update
    @contest_winner = ContestWinner.find(params[:id])

    respond_to do |format|
      if @contest_winner.update_attributes(params[:contest_winner])
        format.html { redirect_to @contest_winner, notice: 'Contest winner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contest_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contest_winners/1
  # DELETE /contest_winners/1.json
  def destroy
    @contest_winner = ContestWinner.find(params[:id])
    @contest_winner.destroy

    respond_to do |format|
      format.html { redirect_to contest_winners_url }
      format.json { head :no_content }
    end
  end
end
