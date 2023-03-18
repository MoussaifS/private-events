class EventsController < ApplicationController
    def index
        @event = Event.all
        @current_user = current_user
    end

    def show
        @event = Event.where(params[:id])
    end

    def create 
        puts "params[:title]: #{params[:title]}"
        puts "params[:event_day]: #{params[:event_day]}"

        user = User.find(current_user.id)
        @event = user.events.build(event_params) 
        
        puts "params[:title]: #{params[:title]}"
        puts "params[:event_day]: #{params[:event_day]}"

        
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
