class Map < ApplicationRecord
	validates :name, presence: true
	validates :picture_url, presence: true

end
