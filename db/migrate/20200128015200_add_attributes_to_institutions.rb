class AddAttributesToInstitutions < ActiveRecord::Migration[5.2]
  def change
    add_column :institutions, :name, :string
    add_column :institutions, :location, :string
  end
end
