class AddTimeSpentToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :time_spent, :integer
  end
end
