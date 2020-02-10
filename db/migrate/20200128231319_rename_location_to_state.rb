class RenameLocationToState < ActiveRecord::Migration[5.2]
  def change
    rename_column :institutions, :location, :state
    add_column :institutions, :country, :string
  end
end
