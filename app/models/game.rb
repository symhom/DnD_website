class Game < ApplicationRecord

  has_many :characters
  has_one :map

end
