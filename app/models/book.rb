class Book < ActiveRecord::Base
  has_many :book_reviews

  validates_presence_of :author
  validates_presence_of :title
  validates_presence_of :description
end