class ContestPrizesController < ApplicationController
  # GET /contest_prizes
  # GET /contest_prizes.json
  def index
    @contest_prizes = ContestPrize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contest_prizes }
    end
  end

  # GET /contest_prizes/1
  # GET /contest_prizes/1.json
  def show
    @contest_prize = ContestPrize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contest_prize }
    end
  end

  # GET /contest_prizes/new
  # GET /contest_prizes/new.json
  def new
    @contest_prize = ContestPrize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contest_prize }
    end
  end

  # GET /contest_prizes/1/edit
  def edit
    @contest_prize = ContestPrize.find(params[:id])
  end

  # POST /contest_prizes
  # POST /contest_prizes.json
  def create
    @contest_prize = ContestPrize.new(params[:contest_prize])

    respond_to do |format|
      if @contest_prize.save
        format.html { redirect_to @contest_prize, notice: 'Contest prize was successfully created.' }
        format.json { render json: @contest_prize, status: :created, location: @contest_prize }
      else
        format.html { render action: "new" }
        format.json { render json: @contest_prize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contest_prizes/1
  # PUT /contest_prizes/1.json
  def update
    @contest_prize = ContestPrize.find(params[:id])

    respond_to do |format|
      if @contest_prize.update_attributes(params[:contest_prize])
        format.html { redirect_to @contest_prize, notice: 'Contest prize was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contest_prize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contest_prizes/1
  # DELETE /contest_prizes/1.json
  def destroy
    @contest_prize = ContestPrize.find(params[:id])
    @contest_prize.destroy

    respond_to do |format|
      format.html { redirect_to contest_prizes_url }
      format.json { head :no_content }
    end
  end
end
