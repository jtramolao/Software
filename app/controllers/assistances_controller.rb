class AssistancesController < ApplicationController
  before_action :authenticate_user!


def index
    @assistances = target.find(:all)

end





def destroy

 
    @worker = Worker.find(params[:worker_id])
    @assistance = @worker.assistances.find(params[:id])
    @assistance.destroy
    redirect_to worker_path(@worker)
  end 



def new
    @assistance = Assistance.new

 end


  def show

  	@assistance = Assistance.find(params[:id])

  end

   def edit

   	@assistance = Assistance.find(params[:id])
  end

def create

@assistance = Assistance.new(assistance_params) 
@assistance.worker = @worker
 


	if @assistance.save
      redirect_to @assistance.worker
	
	else
		render :new

    end

    end



private
  def target
    @worker ? @worker.assistances :assistance
  end
  def getworker
    return if params[:worker_id].blank?
    @worker = Worker.find(params[:worker_id])
    rescue ActiveRecord::RecordNotFound
    redirect_to assistances_path
  end
  def getassistance
    @assistance = Assistance.find(:all)
  end
	def assistance_params
		params.require(:assistance).permit(:worker_id,:asistio,:excepcion,:horas,:fecha)
	end


end

