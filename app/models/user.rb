class User < ApplicationRecord

  # attr_accessor :password

  has_secure_password
  has_many :games,  :dependent => :destroy
  has_many :players, :dependent => :destroy
  has_many :characters,  :dependent => :destroy
  has_many :maps,  :dependent => :destroy

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

end
