class Character < ApplicationRecord
	validates :specie, presence: true
	validates :character_class, presence: true
end
