class Equip < ActiveRecord::Base
  belongs_to :boss
  has_many :workers , dependent: :nullify
end
