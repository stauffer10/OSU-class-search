class ChangeDataTimeSpentToReviews < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :time_spent, :string
  end
end
