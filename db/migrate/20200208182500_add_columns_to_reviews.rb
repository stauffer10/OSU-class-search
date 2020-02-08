class AddColumnsToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :major_id, :integer
    add_column :reviews, :institution_id, :integer
  end
end
