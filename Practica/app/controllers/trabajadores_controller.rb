class TrabajadoresController < ApplicationController
  def index
  	@trabajadores = Worker.all
  end
  def show
  	@trabajadores = Worker.find(params[:id])
  end
  def new
  	@trabajador = Worker.new
  end
  def create
  	@trabajador = Worker.new(params[:Worker])
  	@trabajador.save
  	redirect_to :back
  end
  def update
  	
  end
end

