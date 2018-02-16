class Supply < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :type, presence: true

end
