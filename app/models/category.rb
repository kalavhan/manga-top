class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: 'Article_categories'
end
