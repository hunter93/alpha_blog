class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :articles
  validates :username, presence: true,
    uniqueness: { case_sensitive: false },
    length: {minimum: 3, maximimum: 25}
  validates :email, presence: true,
    uniqueness: { case_sensitive: false },
    length: { minimum: 1, maximimum: 105 }
    has_secure_password
end
