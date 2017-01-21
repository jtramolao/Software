class Assistance < ActiveRecord::Base

  
  belongs_to :worker
  validates :fecha,uniqueness: { scope: [:worker_id] , :message => "ya tiene una asistencia creada"  }

 validates :excepcion, inclusion:  { in: [false],:message => "No puede ser marcada si trabajadr si asistio"  }, unless: :asistio? 
 validates :horas, inclusion:  { in: [false],:message => "No pueden ser agregadas si trabajador no asistio"  }, if: :asistio? 
 validates :horas , length: { is: 1 , :message => "debe ser de un  digito"} , allow_nil: true
 validates :horas , :numericality => {:only_integer => true , :message => "debe ser de un numero" }, allow_nil: true


validates_each :fecha do |record, attr, value|
      record.errors.add(attr, 'debe ser pasada') if value >= (Time.now.to_date + 1.days)
    end
  
 end
  
 




