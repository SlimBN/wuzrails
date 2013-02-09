class SimpleVotesController < ApplicationController
  # GET /simple_votes
  # GET /simple_votes.json
  def index
    @simple_votes = SimpleVote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @simple_votes }
    end
  end

  # GET /simple_votes/1
  # GET /simple_votes/1.json
  def show
    @simple_vote = SimpleVote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @simple_vote }
    end
  end

  # GET /simple_votes/new
  # GET /simple_votes/new.json
  def new
    @simple_vote = SimpleVote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @simple_vote }
    end
  end

  # GET /simple_votes/1/edit
  def edit
    @simple_vote = SimpleVote.find(params[:id])
  end

  # POST /simple_votes
  # POST /simple_votes.json
  def create
    @simple_vote = SimpleVote.new(params[:simple_vote])

    respond_to do |format|
      if @simple_vote.save
        format.html { redirect_to @simple_vote, notice: 'Simple vote was successfully created.' }
        format.json { render json: @simple_vote, status: :created, location: @simple_vote }
      else
        format.html { render action: "new" }
        format.json { render json: @simple_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /simple_votes/1
  # PUT /simple_votes/1.json
  def update
    @simple_vote = SimpleVote.find(params[:id])

    respond_to do |format|
      if @simple_vote.update_attributes(params[:simple_vote])
        format.html { redirect_to @simple_vote, notice: 'Simple vote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @simple_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_votes/1
  # DELETE /simple_votes/1.json
  def destroy
    @simple_vote = SimpleVote.find(params[:id])
    @simple_vote.destroy

    respond_to do |format|
      format.html { redirect_to simple_votes_url }
      format.json { head :no_content }
    end
  end
end
