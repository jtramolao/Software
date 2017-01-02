class Boss < ActiveRecord::Base
	has_many :reports
	has_many :equips , dependent: :nullify

end
