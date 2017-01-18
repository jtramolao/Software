class ListController < ApplicationController
	before_action :authenticate_user!











  def index


    @search = Assistance.search(params[:q])
    
  	@assistances = @search.result

    

  end


  def search
  index
  render :index
end


  def index2

  	@reports = Report.all



  end




end
