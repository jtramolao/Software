class Worker < ActiveRecord::Base
	has_many :assistances, dependent: :destroy

	
end
