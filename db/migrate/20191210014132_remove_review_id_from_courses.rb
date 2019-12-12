class RemoveReviewIdFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :review_id, :string
  end
end
