class Assistance < ActiveRecord::Base

  
  belongs_to :worker
  validates :fecha,uniqueness: { scope: [:worker_id] }

 validates :excepcion, inclusion:  { in: [false],:message => "No puede ser marcada si trabajadr si asistio"  }, unless: :asistio? 
 validates :horas, inclusion:  { in: [false],:message => "No pueden ser agregadas si trabajador no asistio"  }, if: :asistio? 




  
 end
  
 




