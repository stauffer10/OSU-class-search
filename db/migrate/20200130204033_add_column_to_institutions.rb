class AddColumnToInstitutions < ActiveRecord::Migration[5.2]
  def change
    add_column :institutions, :logo, :text
  end
end
