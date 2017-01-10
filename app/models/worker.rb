class Worker < ActiveRecord::Base

 
	validates_format_of :nombre, :with => /\A[a-zA-Z\s]+\z/ 
	validates :nombre , :presence => {:message => "es requerido"}
	
	validates :rut, :rut => {:message => "no es valido"} 
	validates :rut , :presence => {:message => "es requerido"}
	validates :direccion , :presence => {:message => "es requerida"}
	validates :telefono, :presence => {:message => "es requerido"}
	validates :telefono , length: { is: 9 , :message => "debe tener 9 Numeros"} 
	validates :email , :presence => {:message => "es requerido"}
	validates :email, email_format: { message: "no es correcto" } 


	has_and_belongs_to_many :summaries
	has_many :assistances, dependent: :destroy
	belongs_to :equip



	
end
