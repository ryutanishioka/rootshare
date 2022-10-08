class Root < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :share, url: { allow_blank: true }
end
