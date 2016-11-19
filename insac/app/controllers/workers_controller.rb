class WorkersController < ApplicationController

def index
	@worker = Worker.all

end



	def new
	@worker = Worker.new

     end



   def edit
      @worker = Worker.find(params[:id])
   end


   def show

   @worker = Worker.find(params[:id])

   end


	def create
	
	@worker = Worker.new(nombre: params[:worker][:nombre], 
		                   rut: params[:worker][:rut], 
		                   direccion: params[:worker][:direccion], 
		                   email: params[:worker][:email],
		                   telefono: params[:worker][:telefono], 
		                   equipo: params[:worker][:equipo],    
		                   jefe: params[:worker][:jefe])



	if @worker.save
      redirect_to @worker
	
	else
		render :new

    end

    end

end