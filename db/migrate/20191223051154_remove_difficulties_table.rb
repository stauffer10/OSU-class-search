class RemoveDifficultiesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :difficulties
  end
end
