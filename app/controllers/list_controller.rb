class ListController < ApplicationController
	before_action :authenticate_user!
  def index
  	@assistances = Assistance.all
    

  end




end
