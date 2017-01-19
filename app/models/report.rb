class Report < ActiveRecord::Base
	belongs_to :worker
	validates :resumen , :presence => {:message => "es requerido"}




end
