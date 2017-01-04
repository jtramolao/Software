class ListController < ApplicationController
	before_action :authenticate_user!


  def index

  	@search = Assistance.search(params[:q])
  	@assistances = @search.result
    

  end




end
