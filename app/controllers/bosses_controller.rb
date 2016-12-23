class BossesController < ApplicationController




 def index
    @bosses = Boss.all
  end

  # GET /equips/1
  # GET /equips/1.json
  def show
  end

  # GET /equips/new
  def new
    @boss = Boss.new
  end


end
