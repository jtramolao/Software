class Worker < ActiveRecord::Base

 
	validates_format_of :nombre, :with => /\A[a-zA-Z\s]+\z/ , allow_blank: true
	validates :nombre , :presence => {:message => "es requerido"}
	
	validates :rut, :rut => {:message => "no es valido"} , allow_blank: true
	validates :rut , :presence => {:message => "es requerido"}
	validates :rut , :uniqueness => {:message => "ya ingresado anteriormente"} ,allow_blank: true
	validates :direccion , :presence => {:message => "es requerida"}
	validates :telefono, :presence => {:message => "es requerido"}
	validates :telefono , length: { is: 9 , :message => "celular debe tener 9 Numeros"} , allow_blank: true
	validates :email , :presence => {:message => "es requerido"}
	validates :email, email_format: { message: "no es correcto" } , allow_blank: true
	validates :telefono , :numericality => {:only_integer => true , :message => "deben ser numeros" }, allow_blank: true


	
	has_many :reports , dependent: :destroy
	has_many :assistances, dependent: :destroy
	belongs_to :equip



	
end
