class ReportsController < ApplicationController
	def index
		
	end
	def show
		@report = Report.find(params[:id])
	end
	def new
		@report = Report.new
	end
end