class Worker < ActiveRecord::Base
	belongs_to :report
	has_many :assistances, dependent: :destroy
	belongs_to :equip



	
end
