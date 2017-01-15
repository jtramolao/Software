class Boss < ActiveRecord::Base

     
	validates :nombre , :presence => {:message => "es requerido"}
	validates_format_of :nombre, :with => /\A[a-zA-Z\s]+\z/ 
	validates :rut, :rut => {:message => "no es valido"} 
	validates :rut , :presence => {:message => "es requerido"}
	validates :direccion , :presence => {:message => "es requerida"}
	validates :telefono, :presence => {:message => "es requerido"}
	validates :telefono , length: { is: 9 , :message => "debe tener 9 Numeros"} 
	validates :mail , :presence => {:message => "es requerido"}
	validates :mail, email_format: { message: "no es correcto" } 



	has_many :reports
	has_many :equips , dependent: :nullify

end
