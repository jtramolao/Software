class Assistance < ActiveRecord::Base
  belongs_to :worker
  validates :fecha,uniqueness: { scope: [:worker_id] }

 
end
