class Character < ApplicationRecord
	validates :specie, presence: true
	validates :character_class, presence: true
	validates :picture_url, presence: true
	belongs_to :user
	has_many :players, :dependent => :destroy
end
