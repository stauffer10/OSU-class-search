class AddBenefitToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :benefit, :boolean
  end
end
