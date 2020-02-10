class Article < ApplicationRecord
  validates :AuthorId, presence: true
  validates :Title, presence: true, length { maximum: 50 }
  validates :Text, presence: true, length { maximum: 600 }
  validates :Image, presence: true
end
