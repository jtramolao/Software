class ListController < ApplicationController
	before_action :authenticate_user!











  def index


    
    
  	@assistances =Assistance.all

    

  end




  def index2

  	@reports = Report.all



  end




end
