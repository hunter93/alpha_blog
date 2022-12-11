class User < ApplicationRecord
  has_many :articles
  validates :username, presence: true,
    uniqueness: { case_sensitive: false },
    length: {minimum: 3, maximimum: 25}
  validates :email, presence: true,
    uniqueness: { case_sensitive: false },
    length: { minimum: 1, maximimum: 105 }
end
