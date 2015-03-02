class TrainingEventsController < ApplicationController

 # authenticate :user do
 #   resources :training_events, only: [:new, :create, :edit, :update, :destroy]
 # end


  # GET /training_events
  # GET /training_events.json
  def index
    @training_events = TrainingEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @training_events }
    end
  end

  def player
    player = Player.find(:player_id)
  end

  def training_event
    @training_event = TrainingEvent.find(:player_id)
  end
  # GET /training_events/1
  # GET /training_events/1.json
  def show
    @training_event = TrainingEvent.find(params[:id])

    @attendance = Attend.where(training_event_id:  @training_event.id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @training_event }
    end
  end


  # GET /training_events/new
  # GET /training_events/new.json
  def new
    @training_event = TrainingEvent.new

    #======================
    @all_training_events = TrainingEvent.all
    @all_players = Player.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @training_event }
    end
  end

  # GET /training_events/1/edit
  def edit
    @training_event = TrainingEvent.find(params[:id])
  end

  # POST /training_events
  # POST /training_events.json
  def create
    @training_event = TrainingEvent.new(params[:training_event])

    respond_to do |format|
      if @training_event.save
        format.html { redirect_to @training_event, notice: 'Training event was successfully created.' }
        format.json { render json: @training_event, status: :created, location: @training_event }
      else
        format.html { render action: "new" }
        format.json { render json: @training_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /training_events/1
  # PUT /training_events/1.json
  def update
    @training_event = TrainingEvent.find(params[:id])

    respond_to do |format|
      if @training_event.update_attributes(params[:training_event])
        format.html { redirect_to @training_event, notice: 'Training event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @training_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_events/1
  # DELETE /training_events/1.json
  def destroy
    @training_event = TrainingEvent.find(params[:id])
    @training_event.destroy

    respond_to do |format|
      format.html { redirect_to training_events_url }
      format.json { head :no_content }
    end
  end
end
