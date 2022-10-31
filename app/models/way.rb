class Way < ApplicationRecord
  belongs_to :user
  has_many :goods, dependent: :destroy

  has_one_attached :image

  validates :title, presence: true
  validates :content, presence: true
  validates :share, url: { allow_blank: true }
end
