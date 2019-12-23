class RemovePositionsFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :positions, :integer
  end
end
