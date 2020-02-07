class User < ApplicationRecord
  validates :Name, presence: true, length: { minimum: 2 }
end
