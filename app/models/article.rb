class Article < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :author, class_name: 'User'
  has_many :votes
  has_many :article_categories
  has_many :comments
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: { maximum: 50 }
  validates :text, presence: true, length: { maximum: 600 }
  validates :image, presence: true

  def self.most_voted
    # Article.eager_load(:votes).group("votes.article_id").count(:votes).first
    Article.select('articles.*, COUNT(votes.id) as voted').joins('FULL OUTER JOIN votes ON votes.article_id = articles.id').group('articles.id').order(voted: :desc).first
  end
end
