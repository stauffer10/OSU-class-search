class AssignMajorIdToCourses < ActiveRecord::Migration[5.2]
  def change
    Course.all.each do |c|  
      c.update_attribute(:major_id, 1)
    end
  end
end
