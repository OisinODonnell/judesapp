class AttendsController < ApplicationController

#  authenticate :user do
#    resources :attends, only: [:new, :create, :edit, :update, :destroy]
#  end



  # GET /attends
  # GET /attends.json
  def index
    @attends = Attend.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json; @attends }
    end
  end

  def player
    player = Player.find(:player_id)
  end

  def training_event
    @training_event = TrainingEvent.find(:player_id)
  end
  # GET /attends/1
  # GET /attends/1.json
  def show
    @attend = Attend.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json; @attend }
    end
  end

  # GET /attends/new
  # GET /attends/new.json
  def new
    @attend = Attend.new
	
	
		#======================
	@all_training_events = TrainingEvent.all
	@all_players = Player.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attend }
    end
  end

  # GET /attends/1/edit
  def edit
    @attend = Attend.find(params[:id])
  end

  # POST /attends
  # POST /attends.json
  def create
    @attend = Attend.new(params[:attend])

    respond_to do |format|
      if @attend.save
        format.html { redirect_to @attend, notice: 'Attend was successfully created.' }
        format.json { render json: @attend, status: :created, location: @attend }
      else
        format.html { render action: "new" }
        format.json { render json: @attend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attends/1
  # PUT /attends/1.json
  def update
    @attend = Attend.find(params[:id])

    respond_to do |format|
      if @attend.update_attributes(params[:attend])
        format.html { redirect_to @attend, notice: 'Attend was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attends/1
  # DELETE /attends/1.json
  def destroy
    @attend = Attend.find(params[:id])
    @attend.destroy

    respond_to do |format|
      format.html { redirect_to attends_url }
      format.json { head :no_content }
    end
  end
end
