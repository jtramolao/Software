class ListController < ApplicationController
	before_action :authenticate_user!  , except: [:index2]











  def index


    
    
  	@assistances =Assistance.all

    

  end




  def index2

  	@reports = Report.all



  end




end
