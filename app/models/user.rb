class User < ActiveRecord::Base
  has_many :book_reviews

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

  NUMBER_REGEX = /\d/
  validates :password, presence: true, length: { minimum: 8},
    format: { with: NUMBER_REGEX }
end
