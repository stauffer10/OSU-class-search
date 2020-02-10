class AddColumnToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :institution_id, :integer
  end
end
