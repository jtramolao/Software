class ListController < ApplicationController
	before_action :authenticate_user!


  def index



    @workers = Worker.all
  	@assistances = Assistance.all
  	

    

  end


  def index2

  	@reports = Report.all



  end




end
