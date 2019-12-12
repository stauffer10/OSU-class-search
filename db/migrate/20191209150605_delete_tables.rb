class DeleteTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :course_reviews
  end
end
