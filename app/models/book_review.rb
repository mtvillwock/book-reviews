class BookReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  # validates :user_id, presence: true, numericality: true
  validates :book_id, presence: true, numericality: true

  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end