class AddReviewIdToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :review_id, :integer
  end
end
