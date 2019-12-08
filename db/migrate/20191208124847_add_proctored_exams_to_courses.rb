class AddProctoredExamsToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :proctoredexams, :string
  end
end
