class EventsController < ApplicationController
    def index
        @event = Event.all
    end

    def show
        @event = Event.where(params[:id])
    end

    def create 
        @event = Event.create(event_params)
        if @event.save
            redirect_to index_path
        else 
            render 'new'
        end
    end

    def new 
        @event = Event.new
    end

    private 
    def event_params 

        params.require(:event).permit(:title, :date )
    end
end
