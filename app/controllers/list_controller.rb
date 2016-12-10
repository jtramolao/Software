class ListController < ApplicationController
  def index
  	@assistances = Assistance.all
    

  end
end
