class Root < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, url: { allow_blank: true }
end
