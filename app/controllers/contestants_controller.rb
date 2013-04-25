class ContestantsController < ApplicationController
before_filter :get_contest

  # GET /contestants
  # GET /contestants.json

  def get_contest
      @contest = Contest.find(params[:contest_id])
  end


  def index
      @contestants = @contest.contestants.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contestants }
    end
  end

  # GET /contestants/1
  # GET /contestants/1.json
  def show
    @contestant = @contest.contestants.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: [@contest, @contestant] }
    end
  end

  # GET /contestants/new
  # GET /contestants/new.json
  def new
    @contestant = @contest.contestants.new

  end

  # GET /contestants/1/edit
  def edit
    @contestant = Contestant.find(params[:id])
  end

  # POST /contestants
  # POST /contestants.json
  def create
    @contestant = @contest.contestants.create(params[:contestant])

    respond_to do |format|
      if @contestant.save
        format.html { redirect_to [@contest, @contestant],
                    notice: 'Contestant was successfully created.' }
        format.json { render json: [@contest, @contestant],
                    status: :created, 
                    location: [@contest, @contestant] }
      else
        format.html { render action: "new" }
        format.json { render json: @contestant.errors, 
                    status: :unprocessable_entity }
      end
    end
  end

  # PUT /contestants/1
  # PUT /contestants/1.json
  def update
    @contestant = @contest.contestants.find(params[:id])

    respond_to do |format|
      if @contestant.update_attributes(params[:contestant])
        format.html { redirect_to [@contest,@contestant], notice: 'Contestant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contestants/1
  # DELETE /contestants/1.json
  def destroy
    @contestant = Contestant.find(params[:id])
    @contestant.destroy

    respond_to do |format|
      format.html { redirect_to contestants_url }
      format.json { head :no_content }
    end
  end
end
