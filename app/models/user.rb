class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 4..12 }
  validates :email, presence: true, uniqueness: true
  has_many :posts
  has_many :comments
end
