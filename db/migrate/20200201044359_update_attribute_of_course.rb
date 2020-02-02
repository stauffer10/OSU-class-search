class UpdateAttributeOfCourse < ActiveRecord::Migration[5.2]
  def change
    Course.all.each do |c|
      c.update_attribute(:institution_id, 4)
    end
  end
end
