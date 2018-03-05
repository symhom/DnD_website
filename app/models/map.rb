class Map < ApplicationRecord
	validates :name, presence: true
	validates :picture_url, presence: true

	belongs_to :user
	has_many :games, :dependent => :destroy

end
