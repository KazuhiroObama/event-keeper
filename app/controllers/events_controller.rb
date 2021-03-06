class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  after_action :set_event_day, only: [:create, :update]

  # GET /events
  # GET /events.json
  def index
    @events = Event.order(:opening_time)
    @first_events = Event.first_days_events_pluck
    # @events = Event.order(:event_day)
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title,
                                    :content,
                                    :image,
                                    :opening_time,
                                    :close_time,
                                    :maximum_number_of_people,
                                    :deadline_of_participant_for_event,
                                    :receptionist,
                                    :organizer_id
                                   )
    end

    def set_event_day
      @event.update("event_day(1i)"=> @event.opening_time.year.to_s,
                    "event_day(2i)"=> @event.opening_time.month.to_s,
                    "event_day(3i)"=> @event.opening_time.day.to_s
                   )
    end
end
