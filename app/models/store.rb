class Store < ApplicationRecord
	validates :name, presence: true
	has_many :supplies
end
