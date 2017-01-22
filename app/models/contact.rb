class Contact < ActiveRecord::Base
	validates_format_of :nombre, :with => /\A[a-zA-Z\s]+\z/ 
	validates :nombre, :presence => {:message => "Campo vacio. Usted debe ingresar un nombre"}
	validates :rut, :uniqueness => {:message => "ya ingresado anteriormente"}, allow_nil: true
	validates :rut, :presence => {:message => "Campo vacio. Usted debe ingresar un rut"}
	validates :fono , length: { is: 9 , :message => "Debe tener 9 Numeros"} 
	validates :fono, :presence => {:message => "Campo vacio. Usted debe ingresar un telefono"}
	validates :email, email_format: { message: "No es correcto. Usted debe reingresar su email"} 
	validates :email, :presence => {:message => "Campo vacio. Usted debe ingresar un email"}
	validates :comentario, :presence => {:message => "Campo vacio. Usted debe ingresar un comentario"}
end

