class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :coursename
      t.text :course_content
      t.timestamps
    end
  end
end
