class ReportsController < ApplicationController
	before_action :authenticate_user!, except: [:show , :index]
	before_action :set_worker
	
	def index

		@reports=Report.all
		
	end



	def show
		@report = Report.find(params[:id])
		respond_to do |format|
			format.html
			format.json
			format.pdf {render template: 'reports/reporte' , pdf: 'reporte' }
		end
	end


	def destroy
	
    @worker = Worker.find(params[:worker_id])
     @report = @worker.reports.find(params[:id])
	@report.destroy #destroy elimina el objeto de la bd
    redirect_to worker_path(@worker)
  end

      

	def create
		@report = Report.new(report_params)
		@report.worker = @worker
		
 

	if @report.save
      redirect_to [@worker, @report]
	
	else
		render :new

    end

    end

	



	def new
		@report = Report.new
		@worker = Worker.find(params[:worker_id])

	end



	private
	def report_params
		params.require(:report).permit(:fecha,:bonos,:worker_id,:descuentos,:resumen,:diasFaltados,:diasTotales,:porcentaje,:horasExtras,:excepciones)
		
	end

	def set_worker
  @worker = Worker.find(params[:worker_id])
end

end