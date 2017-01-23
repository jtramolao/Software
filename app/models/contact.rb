class Contact < ActiveRecord::Base
	validates_format_of :nombre, :with => /\A[a-zA-Z\s]+\z/ , allow_blank: true
	validates :nombre, :presence => {:message => "Campo vacio. Usted debe ingresar un nombre"}
	validates :rut, :uniqueness => {:message => "ya ingresado anteriormente"} , allow_blank: true
	validates :rut, :presence => {:message => "Campo vacio. Usted debe ingresar un rut"}
	validates :rut, :rut => {:message => "no es valido"} , allow_blank: true
	validates :fono , length: { is: 9 , :message => "Debe tener 9 Numeros"} , allow_blank: true
	validates :fono, :presence => {:message => "Campo vacio. Usted debe ingresar un telefono"}
	validates :email, email_format: { message: "No es correcto. Usted debe reingresar su email"} , allow_blank: true
	validates :email, :presence => {:message => "Campo vacio. Usted debe ingresar un email"} 
	validates :comentario, :presence => {:message => "Campo vacio. Usted debe ingresar un comentario"}
end

