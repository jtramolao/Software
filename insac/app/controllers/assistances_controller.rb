class AssistancesController < ApplicationController



def index
    @assistances = Assistance.all

end



def new
    @assistance = Assistance.new
    @workers = Worker.all
 end


  def show

  	@assistance = Assistance.find(params[:id])

  end

   def edit

   	@assistance = Assistance.find(params[:id])
  end

def create

@assistance = Assistance.new(assistance_params) 



	if @assistance.save
      redirect_to @assistance
	
	else
		render :new

    end

    end



private
	def assistance_params
		params.require(:assistance).permit(:worker_id,:asistio,:excepcion,:horas,:fecha)
	end



end

