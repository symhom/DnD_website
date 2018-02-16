class Movie < ApplicationRecord

  belongs_to :director
  has_one :map

end
