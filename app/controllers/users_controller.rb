class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
    ## Is it good practice to put nothing in here ? 
    ## Well it works so...
    @event = Event.all
  end
end
