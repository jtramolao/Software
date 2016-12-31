class ReportsController < ApplicationController
	def index
		
	end
	def show
		@report = Report.find(params[:id])
	end
	def create
		@report = Report.new(report_params)
	end
	def new
		@report = Report.new
	end
	private
	def report_params
		params.require(:report).permit(:fecha,:bonos,:boss_id,:worker_id)
		
	end
	end

end