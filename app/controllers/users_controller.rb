class UsersController < ApplicationController
    def show
        @event = Event.where(user_id = 'params[:id]')
    end
end
