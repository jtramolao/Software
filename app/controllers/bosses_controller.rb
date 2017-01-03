class BossesController < ApplicationController




 def index
    @bosses = Boss.all
 

  end

  # GET /equips/1
  # GET /equips/1.json
  def show

    @boss = Boss.find(params[:id])
    @equips = Equip.where(boss_id: @boss.id)
  end

  # GET /equips/new
  def new
    @boss = Boss.new
  end


  def edit

    @boss = Boss.find(params[:id])

  end

def create
    @boss = Boss.new(boss_params)

    respond_to do |format|
      if @boss.save
        format.html { redirect_to @boss, notice: 'Boss was successfully created.' }
        format.json { render :show, status: :created, location: @equip }
      else
        format.html { render :new }
        format.json { render json: @equip.errors, status: :unprocessable_entity }
      end
    end
  end



   def destroy
  

  @boss = Boss.find(params[:id])
  @boss.destroy #destroy elimina el objeto de la bd
  redirect_to bosses_path
  end

def update

    
  @boss = Boss.find(params[:id])
  if @boss.update(boss_params)
        redirect_to @boss
    else
      render :edit
    end

end




  def boss_params
      params.require(:boss).permit(:nombre, :rut, :telefono , :direccion , :mail)
    end

end
