class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ways
  has_many :goods
  has_many :good_ways, through: :goods, source: :way
  
  validates :nickname, presence: true
end
