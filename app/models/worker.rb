class Worker < ActiveRecord::Base

 
	validates :nombre , :presence => {:message => "es requerido"}
	validates_format_of :nombre, :with => /\A[-a-z]+\Z/ 
	validates :rut, :rut => {:message => "no es valido"} 
	validates :rut , :presence => {:message => "es requerido"}
	validates :direccion , :presence => {:message => "es requerida"}
	validates :telefono, :presence => {:message => "es requerido"}
	validates :telefono , length: { is: 9 , :message => "debe tener 9 Numeros"} ,  :if => "telefono.nil?"
	validates :email , :presence => {:message => "es requerido"}
	validates :email, email_format: { message: "no es un mail correcto" } , :if => "email.nil?"


	
	belongs_to :report
	has_many :assistances, dependent: :destroy
	belongs_to :equip



	
end
