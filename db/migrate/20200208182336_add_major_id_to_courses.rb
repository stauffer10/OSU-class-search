class AddMajorIdToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :major_id, :integer
  end
end
