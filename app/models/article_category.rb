class ArticleCategory < ApplicationRecord
  belongs_to :article, class_name: "Article"
  belongs_to :category, class_name: "Category"
end
