class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories, foreign_key: :category_id
end
