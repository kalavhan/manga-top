class Category < ApplicationRecord
  has_many :articles, through: 'Articles_categories'
end
