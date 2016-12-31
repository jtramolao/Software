class AssistancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_worker


def index
    @assistances = Assistance.all

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
	def assistance_params
		params.require(:assistance).permit(:worker_id,:asistio,:excepcion,:horas,:fecha)
	end

def set_worker
  @worker = Worker.find(params[:worker_id])
end



end

