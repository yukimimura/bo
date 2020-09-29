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
end
