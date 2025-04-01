class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :created_articles, foreign_key: :author_id, class_name: 'Article'
  has_many :votes, class_name: 'Vote'
  has_many :comments
  validates :name, presence: true, length: { in: 2..15 }
end
