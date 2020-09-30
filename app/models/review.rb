class Review < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  validates :score, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end
