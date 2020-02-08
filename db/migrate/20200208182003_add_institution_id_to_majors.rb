class AddInstitutionIdToMajors < ActiveRecord::Migration[5.2]
  def change
    add_column :majors, :institution_id, :integer
  end
end
