class EventController < ApplicationController

    def index 
        @events = Event.all
    end 

    def show 
    end 

    def new 
        @events = Event.all
    end 

    def create 
    end 

    def edit  
    end 

    def update 
    end 

    def destroy
    end 
end 