class CreateBookReviews < ActiveRecord::Migration
  def change
    create_table :book_reviews do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :rating
    end
  end
end
