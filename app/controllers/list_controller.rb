class ListController < ApplicationController
	before_action :authenticate_user!


  def index



    @workers = Worker.all
  	@assistances = Assistance.all
  	@assistance = Assistance.new

    

  end




end
