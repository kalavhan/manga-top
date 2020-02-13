class Article < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: { maximum: 50 }
  validates :text, presence: true, length: { maximum: 600 }
  validates :image, presence: true
end
