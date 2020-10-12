class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  has_many :post_categories, dependent: :destroy
  has_many :categories, through: :post_categories, source: :category
   
  def label(category)
   self.post_categories.find_or_create_by(category_id: category.id)
  end

  def unlabel(category)
    post_categories = self.post_categories.find_by(category_id: category.id)
    post_categories.destroy if post_categories
  end

  def labeling?(category)
    self.categories.include?(category)
  end
  
  has_many :reviews, dependent: :destroy
  
  def avg_score
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end

  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
  
  has_many :favorites, dependent: :destroy
  # 下記のは場合によってはいらない
  has_many :favs, through: :favorites, source: :user
  
end
