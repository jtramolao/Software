class Contact < ActiveRecord::Base
	validates :nombre, :presence => {:message => "Campo vacio. Usted debe ingresar un nombre"}
	validates :rut, :presence => {:message => "Campo vacio. Usted debe ingresar un rut"}
	validates :fono, :presence => {:message => "Campo vacio. Usted debe ingresar un telefono"}
	validates :email, :presence => {:message => "Campo vacio. Usted debe ingresar un email"}
	validates :comentario, :presence => {:message => "Campo vacio. Usted debe ingresar un comentario"}
end
