class Game < ApplicationRecord

  belongs_to :user
  has_one :map
  has_many :players, :dependent => :destroy

end
