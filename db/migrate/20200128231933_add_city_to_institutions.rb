class AddCityToInstitutions < ActiveRecord::Migration[5.2]
  def change
    add_column :institutions, :city, :string
  end
end
