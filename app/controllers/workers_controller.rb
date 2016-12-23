class WorkersController < ApplicationController
before_action :authenticate_user!


#GET /workers

def index

	 @search = Worker.search(params[:q])

	@workers = @search.result

	@assistance = Assistance.new

end


def search
  index
  render :index
end


def new
@worker = Worker.new

end



   def edit
      @worker = Worker.find(params[:id])
   end


#GET /workers/:id

   def show

   @worker = Worker.find(params[:id])
   @assistance = Assistance.new

   end





	def create
	
	#@worker = Worker.new(nombre: params[:worker][:nombre], 
	#	                   rut: params[:worker][:rut], 
	#	                   direccion: params[:worker][:direccion], 
	#	                   email: params[:worker][:email],
	#	                   telefono: params[:worker][:telefono], 
	#	                   equipo: params[:worker][:equipo],    
	#	                   jefe: params[:worker][:jefe])

     @worker = Worker.new(worker_params) 


	if @worker.save
      redirect_to @worker
	
	else
		render :new

    end

    end


   def destroy
	

	@worker = Worker.find(params[:id])
	@worker.destroy #destroy elimina el objeto de la bd
	redirect_to workers_path
  end





    
    def update
	#UPDATE
    
	# @article.update_attributes({title:{'Nuevo Titulo'})
	@worker = Worker.find(params[:id])
	if @worker.update(worker_params)
        redirect_to @worker
    else
    	render :edit
    end

end

	

	private
	def validate_user
		redirect_to new_user_session_path, notice: "Debes iniciar sesion"
		
	end
	def worker_params
		params.require(:worker).permit(:nombre,:rut,:direccion,:email,:telefono,:equipo,:jefe)
	end



	

end