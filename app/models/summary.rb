class Summary < ActiveRecord::Base
		has_and_belongs_to_many :workers
end
