class EventsController < ApplicationController
    def index
        @event = Event.all
    end

    def show
        @event = Event.where(params[:id])
    end

    def create 
        @event = Event.new(event_params)
        @event.user_id = 1
        if @event.save
            redirect_to root_path
        else 
            render 'new'
        end
    end

    def new 
        @event = Event.new
    end

    private 
    def event_params 
        params.require(:event).permit(:title, :event_day )
    end
end
