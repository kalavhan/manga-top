class ArticleCategory < ApplicationRecord
  belongs_to :articles, class_name: 'Article'
  belongs_to :categories, class_name: 'Category'
end
