class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes, foreign_key: 'ArticleId', class_name: 'Vote'
  has_many :categories, through: 'Article_categories'
  validates :AuthorId, presence: true
  validates :Title, presence: true, length: { maximum: 50 }
  validates :Text, presence: true, length: { maximum: 600 }
  validates :Image, presence: true
end
